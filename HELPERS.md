### CRUNCHBASE
```
1. Save all `Crunchbase Acquisitions Dorking` in tmp.txt

cat tmp.txt | grep -E "https://www.crunchbase.com/organization/|https://www.crunchbase.com/acquisition/" | sed 's/acquisition/organization/' | sed 's|.*/\(.*\)-acquires-\(.*\)--.*|https://www.crunchbase.com/organization/\2|' | sed 's|\(https://www.crunchbase.com/organization/[^/]*\).*|\1|' | unew -el -i -t

2. open unew output using `Bulk URL Opener`

3. save all valid Acquisitions wildcard in ${URLSDIR}/crunchbase.txt like this
alter.xyz
bynorth.com
wiz.io
onward.ai
```