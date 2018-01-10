--table mahasiswa
CREATE TABLE mahasiswa(
MAHASISWAID INT PRIMARY KEY AUTOINCREMENT NOT NULL,
NAMA_MAHASISWA TEXT NOT NULL,
NIM TEXT NOT NULL,
JURUSANID INT NOT NULL,
UMUR TEXT NOT NULL,
ALAMAT TEXT NOT NULL
);

INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, UMUR, ALAMAT) VALUES(1, 'Bimo', '000123', 2, 25, 'Tangerang Selatan');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(2, 'Toni', '000125', 1, 24, 'Jakarta');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(3, 'Mikha', '000125', 1, 22, 'Bekasi');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(4, 'Markus', '000125', 1, 22, 'Bekasi');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(5, 'Firman', '000125', 1, 22, 'Bekasi');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(6, 'William', '000125', 1, 19, 'Bandung');
INSERT INTO mahasiswa(MAHASISWAID,NAMA_MAHASISWA, NIM, JURUSANID, ALAMAT) VALUES(7, 'Abdul', '000125', 1, 25, 'Bandung');

--dosen
CREATE TABLE dosen(
DOSENID INT PRIMARY KEY NOT NULL,
NAMA_DOSEN TEXT NOT NULL
);

INSERT INTO dosen(DOSENID, NAMA_DOSEN) VALUES(1, 'Ruben');
INSERT INTO dosen(DOSENID, NAMA_DOSEN) VALUES(2, 'Doni');
INSERT INTO dosen(DOSENID, NAMA_DOSEN) VALUES(3, 'Rubi');
INSERT INTO dosen(DOSENID, NAMA_DOSEN) VALUES(4, 'Dominic');

--table matakuliah
CREATE TABLE matakuliah(
MATAKULIAHID INT PRIMARY KEY NOT NULL,
NAMA_MATKUL TEXT NOT NULL,
SKS INT NOT NULL
);

INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(1, 'Database', 3);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(2, 'Agama', 2);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(3, 'Psikologi Kognitif', 6);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(4, 'Olahraga', 3);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(5, 'Data Mining', 3);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(6, 'Kecerdasan Buatan', 3);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(7, 'Algoritma', 4);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(8, 'Sistem Operasi', 4);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(9, 'Database', 4);
INSERT INTO matakuliah(MATAKULIAHID, NAMA_MATKUL, SKS) VALUES(10, 'Metodologi Penelitian', 6);


--table jurusan
CREATE TABLE jurusan(
JURUSANID INT PRIMARY KEY NOT NULL,
NAMA_JURUSAN TEXT NOT NULL
);

INSERT INTO jurusan(JURUSANID, NAMA_JURUSAN) VALUES(1, 'Sistem Informatika');
INSERT INTO jurusan(JURUSANID, NAMA_JURUSAN) VALUES(2, 'Psikologi');

--table kontrakkuliah
CREATE TABLE kontrakkuliah(Algoritma
KONTRAKKULIAHID INT PRIMARY KEY NOT NULL,
MAHASISWAID INT NOT NULL,
DOSENID INT NOT NULL,
MATAKULIAHID INT NOT NULL,
NILAI INT NOT NULL,
GRADE TEXT NOT NULL
);

--bimo
INSERT INTO kontrakkuliah(KONTRAKKULIAHID, MAHASISWAID, DOSENID, MATAKULIAHID, NILAI) VALUES(1, 1, 1, 1, 79, "B");
INSERT INTO kontrakkuliah(KONTRAKKULIAHID, MAHASISWAID, DOSENID, MATAKULIAHID, NILAI) VALUES(1, 1, 1, 1, 79, "B");
INSERT INTO kontrakkuliah(KONTRAKKULIAHID, MAHASISWAID, DOSENID, MATAKULIAHID, NILAI) VALUES(1, 1, 1, 1, 79, "B");

--toni
INSERT INTO kontrakkuliah(KONTRAKKULIAHID, MAHASISWAID, DOSENID, MATAKULIAHID, NILAI) VALUES(2, 2, 2, 2, 90, "A");


SELECT mahasiswa.nama_mahasiswa, jurusan.nama_jurusan, mahasiswa.nim, matakuliah.nama_matkul, matakuliah.sks, dosen.nama_dosen, kontrakkuliah.nilai FROM kontrakkuliah
INNER JOIN mahasiswa ON kontrakkuliah.MAHASISWAID=mahasiswa.MAHASISWAID
INNER JOIN jurusan on mahasiswa.jurusanid=jurusan.jurusanid
INNER JOIN dosen ON kontrakkuliah.DOSENID=dosen.DOSENID
INNER JOIN matakuliah ON kontrakkuliah.MATAKULIAHID=matakuliah.MATAKULIAHID;
