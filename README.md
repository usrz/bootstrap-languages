Flag images have originally made by [IconDrawer](http://www.icondrawer.com),
then converted and assembled using [ImageMagick](http://www.imagemagick.org/)
and optimized using [PNGCrush](http://pmt.sourceforge.net/pngcrush/index.html)
with the following script:

```bash
#!/bin/sh

SMALL=""
MEDIUM=""
LARGE=""
XLARGE=""
for COUNTRY in sa by bg cz dk de gr us es ee fi fr ie in hr hu id is it \
               il jp kr lt lv mk my mt nl no pl pt ro ru sk si al rs se \
               th tr ua vn cn ; do
     SMALL="${SMALL}  16/${COUNTRY}.png"
    MEDIUM="${MEDIUM} 24/${COUNTRY}.png"
     LARGE="${LARGE}  32/${COUNTRY}.png"
    XLARGE="${XLARGE} 48/${COUNTRY}.png"
done

montage ${SMALL}  -tile 1x -crop 14x11+1+2 -geometry 14x11+0+0 small.png
montage ${MEDIUM} -tile 1x -crop 22x16+1+4 -geometry 22x16+0+0 medium.png
montage ${LARGE}  -tile 1x -crop 30x22+1+5 -geometry 30x22+0+0 large.png
montage ${XLARGE} -tile 1x -crop 46x33+1+7 -geometry 46x33+0+0 xlarge.png

pngcrush small.png   small-optimized.png
pngcrush medium.png medium-optimized.png
pngcrush large.png   large-optimized.png
pngcrush xlarge.png xlarge-optimized.png
```

The mapping between language and country flag is as follows (in order):

<table>
  <thead>
    <tr>
      <th colspan="2">Language</th>
      <th colspan="2">Country</th>
      <th colspan="4">Y-Offset</th>
    </tr>
    <tr>
      <th>ISO</th>
      <th>Name</th>
      <th>ISO</th>
      <th>Name</th>
      <th>S</th>
      <th>M</th>
      <th>L</th>
      <th>XL</th>
    </tr>
  </thead>
  <tbody>
    <tr><th>ar</th><td>Arabic</td><td>SA</td><td>Saudi Arabia</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><th>be</th><td>Belarusian</td><td>BY</td><td>Belarus</td><td>11</td><td>16</td><td>22</td><td>33</td></tr>
    <tr><th>bg</th><td>Bulgarian</td><td>BG</td><td>Bulgaria</td><td>22</td><td>32</td><td>44</td><td>66</td></tr>
    <tr><th>cs</th><td>Czech</td><td>CZ</td><td>Czech</td><td>33</td><td>48</td><td>66</td><td>99</td></tr>
    <tr><th>da</th><td>Danish</td><td>DK</td><td>Denmark</td><td>44</td><td>64</td><td>88</td><td>132</td></tr>
    <tr><th>de</th><td>German</td><td>DE</td><td>Germany</td><td>55</td><td>80</td><td>110</td><td>165</td></tr>
    <tr><th>el</th><td>Greek</td><td>GR</td><td>Greece</td><td>66</td><td>96</td><td>132</td><td>198</td></tr>
    <tr><th>en</th><td>English</td><td>US</td><td>United</td><td>77</td><td>112</td><td>154</td><td>231</td></tr>
    <tr><th>es</th><td>Spanish</td><td>ES</td><td>Spain</td><td>88</td><td>128</td><td>176</td><td>264</td></tr>
    <tr><th>et</th><td>Estonian</td><td>EE</td><td>Estonia</td><td>99</td><td>144</td><td>198</td><td>297</td></tr>
    <tr><th>fi</th><td>Finnish</td><td>FI</td><td>Finland</td><td>110</td><td>160</td><td>220</td><td>330</td></tr>
    <tr><th>fr</th><td>French</td><td>FR</td><td>France</td><td>121</td><td>176</td><td>242</td><td>363</td></tr>
    <tr><th>ga</th><td>Irish</td><td>IE</td><td>Ireland</td><td>132</td><td>192</td><td>264</td><td>396</td></tr>
    <tr><th>hi</th><td>Hindi</td><td>IN</td><td>India</td><td>143</td><td>208</td><td>286</td><td>429</td></tr>
    <tr><th>hr</th><td>Croatian</td><td>HR</td><td>Croatia</td><td>154</td><td>224</td><td>308</td><td>462</td></tr>
    <tr><th>hu</th><td>Hungarian</td><td>HU</td><td>Hungary</td><td>165</td><td>240</td><td>330</td><td>495</td></tr>
    <tr><th>in</th><td>Indonesian</td><td>ID</td><td>Indonesia</td><td>176</td><td>256</td><td>352</td><td>528</td></tr>
    <tr><th>is</th><td>Icelandic</td><td>IS</td><td>Iceland</td><td>187</td><td>272</td><td>374</td><td>561</td></tr>
    <tr><th>it</th><td>Italian</td><td>IT</td><td>Italy</td><td>198</td><td>288</td><td>396</td><td>594</td></tr>
    <tr><th>iw</th><td>Hebrew</td><td>IL</td><td>Israel</td><td>209</td><td>304</td><td>418</td><td>627</td></tr>
    <tr><th>ja</th><td>Japanese</td><td>JP</td><td>Japan</td><td>220</td><td>320</td><td>440</td><td>660</td></tr>
    <tr><th>ko</th><td>Korean</td><td>KR</td><td>South</td><td>231</td><td>336</td><td>462</td><td>693</td></tr>
    <tr><th>lt</th><td>Lithuanian</td><td>LT</td><td>Lithuania</td><td>242</td><td>352</td><td>484</td><td>726</td></tr>
    <tr><th>lv</th><td>Latvian</td><td>LV</td><td>Latvia</td><td>253</td><td>368</td><td>506</td><td>759</td></tr>
    <tr><th>mk</th><td>Macedonian</td><td>MK</td><td>Macedonia</td><td>264</td><td>384</td><td>528</td><td>792</td></tr>
    <tr><th>ms</th><td>Malay</td><td>MY</td><td>Malaysia</td><td>275</td><td>400</td><td>550</td><td>825</td></tr>
    <tr><th>mt</th><td>Maltese</td><td>MT</td><td>Malta</td><td>286</td><td>416</td><td>572</td><td>858</td></tr>
    <tr><th>nl</th><td>Dutch</td><td>NL</td><td>Netherlands</td><td>297</td><td>432</td><td>594</td><td>891</td></tr>
    <tr><th>no</th><td>Norwegian</td><td>NO</td><td>Norway</td><td>308</td><td>448</td><td>616</td><td>924</td></tr>
    <tr><th>pl</th><td>Polish</td><td>PL</td><td>Poland</td><td>319</td><td>464</td><td>638</td><td>957</td></tr>
    <tr><th>pt</th><td>Portuguese</td><td>PT</td><td>Portugal</td><td>330</td><td>480</td><td>660</td><td>990</td></tr>
    <tr><th>ro</th><td>Romanian</td><td>RO</td><td>Romania</td><td>341</td><td>496</td><td>682</td><td>1023</td></tr>
    <tr><th>ru</th><td>Russian</td><td>RU</td><td>Russia</td><td>352</td><td>512</td><td>704</td><td>1056</td></tr>
    <tr><th>sk</th><td>Slovak</td><td>SK</td><td>Slovakia</td><td>363</td><td>528</td><td>726</td><td>1089</td></tr>
    <tr><th>sl</th><td>Slovenian</td><td>SI</td><td>Slovenia</td><td>374</td><td>544</td><td>748</td><td>1122</td></tr>
    <tr><th>sq</th><td>Albanian</td><td>AL</td><td>Albania</td><td>385</td><td>560</td><td>770</td><td>1155</td></tr>
    <tr><th>sr</th><td>Serbian</td><td>RS</td><td>Serbia</td><td>396</td><td>576</td><td>792</td><td>1188</td></tr>
    <tr><th>sv</th><td>Swedish</td><td>SE</td><td>Sweden</td><td>407</td><td>592</td><td>814</td><td>1221</td></tr>
    <tr><th>th</th><td>Thai</td><td>TH</td><td>Thailand</td><td>418</td><td>608</td><td>836</td><td>1254</td></tr>
    <tr><th>tr</th><td>Turkish</td><td>TR</td><td>Turkey</td><td>429</td><td>624</td><td>858</td><td>1287</td></tr>
    <tr><th>uk</th><td>Ukrainian</td><td>UA</td><td>Ukraine</td><td>440</td><td>640</td><td>880</td><td>1320</td></tr>
    <tr><th>vi</th><td>Vietnamese</td><td>VN</td><td>Vietnam</td><td>451</td><td>656</td><td>902</td><td>1353</td></tr>
    <tr><th>zh</th><td>Chinese</td><td>CN</td><td>China</td><td>462</td><td>672</td><td>924</td><td>1386</td></tr>
  </tbody>
</table>
