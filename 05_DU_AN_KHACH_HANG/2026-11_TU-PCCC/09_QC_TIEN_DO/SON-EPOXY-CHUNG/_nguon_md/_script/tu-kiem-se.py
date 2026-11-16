# Tự kiểm bộ sơn epoxy chung: chữ trong .docx khớp nguồn .md, không lỗi phông, A4 dọc, có PDF. Chạy: python -I tu-kiem-se.py <thư mục SON-EPOXY-CHUNG>
import sys, os, re, io, zipfile, glob
import xml.etree.ElementTree as ET
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')
D = sys.argv[1]; W = '{http://schemas.openxmlformats.org/wordprocessingml/2006/main}'
norm = lambda s: re.sub(r'[\s •`*|#>\-_]+', '', s)
loi = 0
for p in sorted(glob.glob(os.path.join(D, '*.docx'))):
    root = ET.fromstring(zipfile.ZipFile(p).read('word/document.xml'))
    txt = ''.join((t.text or '') for t in root.iter(W + 't')); a = norm(txt)
    sz = root.find('.//' + W + 'pgSz'); a4 = abs(int(sz.get(W + 'w')) - 11906) < 20 and abs(int(sz.get(W + 'h')) - 16838) < 20
    md = io.open(os.path.join(D, '_nguon_md', os.path.basename(p)[:-5] + '.md'), encoding='utf-8').read()
    thieu = 0
    for l in md.splitlines():
        if re.match(r'^\|[\s\-:|]+\|$', l): continue
        for cell in (l.strip('|').split('|') if l.startswith('|') else [l]):
            c = norm(re.sub(r'^-\s+', '', cell.strip()))
            if len(c) > 3 and c not in a: thieu += 1
    bad = len(re.findall(r'[�□]|\?{3,}', txt)); pdf = os.path.exists(p[:-5] + '.pdf')
    print('%s | %s | thiếu %d đoạn | lỗi phông %d | pdf %s' % (os.path.basename(p), 'A4 dọc' if a4 else 'KHÔNG A4', thieu, bad, 'có' if pdf else 'KHÔNG'))
    loi += thieu + bad + (0 if a4 else 1) + (0 if pdf else 1)
print('KHÔNG CÓ LỖI' if not loi else 'CÓ LỖI: %d' % loi)
