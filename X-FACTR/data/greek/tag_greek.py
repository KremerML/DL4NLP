
import stanfordnlp
nlp = stanfordnlp.Pipeline(lang='el')


def return_gender(w):
	w = w.strip()
	if w[-1] == "η" or w[-1] == "ή" or w[-1] == "α":
		return "Fem"
	elif w[-2:] == "ος" or w[-2:] == "ης" or w[-2:] == "ής" or w[-2:] == "ας" or w[-2:] == "άς" or w[-2:] == "ός":
		return "Masc"
	else:
		return "Neut"



with open("TREx_greek.txt") as inp:
	lines = inp.readlines()

with open("TREx_greek_tagged.txt", 'w') as inp:
	for l in lines:
		l = l.strip().split('\t')
		ent = l[0]
		form = l[1].strip()
		if ' ' in form:
			doc = nlp(form)
			#w.dependency_relation for w in doc.sentences[0].words
			for word in doc.sentences[0].words:
				if word.dependency_relation == "root":
					root = word.text

		else:
			root = form

		inp.write(f"{ent}\t{form}\t{return_gender(root)}\n")

