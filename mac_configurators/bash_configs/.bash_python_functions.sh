# bash_functions.sh
stampItPython() {
    echo "Date : $1"
    echo "FileName : $2"
    echo "Where : $3"
    echo "Extension : $4"
    # py3 stampIt.py f=VMV_FIN_401_QRG_Vanguard w=p e=PDF d=20141016
    py3 /Users/viva/VDrive/vd_scripts/97_py_scripts/stampIt.py d=$1 f=$2 w=$3 e=$4
}
stampItPythonToday() {
    echo "FileName : $1"
    echo "Where : $2"
    echo "Extension : $3"
    # py3 stampIt.py f=VMV_FIN_401_QRG_Vanguard w=p e=PDF d=20141016
    py3 /Users/viva/VDrive/vd_scripts/97_py_scripts/stampIt.py f=$1 w=$2 e=$3
}
#Derivation of stampItPython() for getting filename and extension without date.
stampItPythonForFileNameAndExtn() {
    echo "FileName : $1"
    echo "Extension : $2"
    # py3 stampIt.py f=VMV_FIN_401_QRG_Vanguard w=p e=PDF d=20141016
    py3 /Users/viva/VDrive/vd_scripts/97_py_scripts/stampIt.py f=$1 e=$2
}
