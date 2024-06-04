# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"0604011X0BFAAAA","system":"bnf"},{"code":"0604011L0CBAAA0","system":"bnf"},{"code":"0604011X0BBAAAA","system":"bnf"},{"code":"0604011G0BVAAAI","system":"bnf"},{"code":"0604011H0BBAAAA","system":"bnf"},{"code":"0604011X0AAAAAA","system":"bnf"},{"code":"0604011L0BIAAAK","system":"bnf"},{"code":"0604011X0BEAAAA","system":"bnf"},{"code":"0604011X0BDAAAA","system":"bnf"},{"code":"0604011L0BRAABA","system":"bnf"},{"code":"0604011J0BBAAAA","system":"bnf"},{"code":"0604011L0BMAAAR","system":"bnf"},{"code":"0604011L0BZAABK","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-hormone-replacement-therapy-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-hormone-replacement-therapy-hrt-tablet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-hormone-replacement-therapy-hrt-tablet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-hormone-replacement-therapy-hrt-tablet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
