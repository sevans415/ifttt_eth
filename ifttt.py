import sys
from shutil import copyfile
import re
#runs if the user calls the script and does not have experience running it
def startup():
    print ("Welcome to If This Then That Blockchain version")
    print ("type 'help' if you would like to learn more or press 'enter' to start")
    while raw_input(":")=='help':
        print "bla bla bla"
    ifClause = raw_input("If:")
    thenClause = raw_input("Then:")
    print ("Your smart contracts states that if " + ifClause + " then " + thenClause)
    if  raw_input("Is this correct? [y/n]") == 'n':
        print ("Unlucky")

    make_contract(ifClause, thenClause);
    print ("Your contract has been pushed to the chain. HYPE.")
    return

#runs if exactly two arguments are passed on from the command line
def proStartup(ifClause, thenClause):
    print ("Your smart contracts states that if " + ifClause + " then " + thenClause)
    #editing of the solidity text shoudl happen here
    make_contract(ifClause, thenClause)
    print ("Your contract has been pushed to the chain. HYPE.")
    return

def make_contract(ifClause, thenClause):
    copyfile('contracts/template.sol', 'contracts/ifttt.sol')
    with open('contracts/ifttt.sol', 'r+') as f:
        text = f.read()
        text = re.sub('replacement1', ifClause, text)
        text = re.sub('replacement2', thenClause, text)
        f.seek(0)
        f.write(text)
        f.truncate()
        f.close()
    return


if __name__ == "__main__":
    if len(sys.argv) == 3:
        proStartup(sys.argv[1], sys.argv[2])
    else:
        startup()
