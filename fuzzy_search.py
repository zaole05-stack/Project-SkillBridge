# Hier kommt diie Logik des Fuzzy Search rein. Das wird ein meisterwerk oder der Untergang 

# proces -> Durchsucht Liste nach ähnlichen Begrriffen
# fuzz -> Algorithmen zur Ähnlichkeitserkennung
# utils -> Hilft bei der verarbeitung von Text
from rapidfuzz import process, fuzz, utils 

def fuzzy_search(search_term, suggestions, limit = 3):

    # Hier chekcen wir ob die Eingabe leer ist. Trip() entfent leerzeichen 
    if not search_term or not search_term.trip():
        return[]    #wir geben eine leere Liste wieder 

    results=process.extract(
        search_term.strip(),
        suggestions,
        scorer=fuzz.WRatio,
        processor=utils.default_process,
        limit=limit,
        score_cutoff=80
        )

    return [
    {"name": name, "score": score}
    for name, score, index in results
]