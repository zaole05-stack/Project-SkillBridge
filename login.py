eingabe_nutzername = input("Bitte geben Sie Ihren Benutzernamen ein: ")
eingabe_passwort = input("Bitte geben Sie Ihr Passwort ein: ")
def check_login(eingabe_nutzername, eingabe_passwort):
    if eingabe_nutzername == "tester" and eingabe_passwort == "passwort123":
        print("login sucessful")
        return True  
    else:
        return False  