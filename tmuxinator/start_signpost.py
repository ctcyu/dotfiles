from signpost import Signpost
Signpost({"driver": "inmemory", "layers": ["validator"]}).run(host="localhost", port=8000)
