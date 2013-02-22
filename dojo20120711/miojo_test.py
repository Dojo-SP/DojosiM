import unittest

def miojo(tempo, a, b):
    if (b == 100) or (b == a):
        raise Exception
    if (abs(a - b) == tempo):
        return max(a,b)
    if (min(a,b)*2 - max(a,b) == tempo ):
        return min(a,b) * 2
    if (2 * b) - (2 * a) == tempo:
        return 18
    if (3 * a) - (2 * b) == tempo: 
        return 21
    return 15
    

class Miojo(unittest.TestCase):
    def test_miojo_com_tempo_1_e_amp_7_e_5(self):
        self.assertEquals(15, miojo(1, 7, 5))

    def test_miojo_com_tempo_2_e_amp_4_e_3(self):
        self.assertEquals(6, miojo(2, 4, 3))
    
    def test_miojo_com_tempo_1_e_amp_2_e_3(self):
        self.assertEquals(3, miojo(1, 2, 3))
    
    def test_miojo_com_tempo_3_e_amp_5_e_7(self):
        self.assertEquals(10, miojo(3, 5, 7))
        
    def test_miojo_com_tempo_2_e_amp_5_e_7(self):
        self.assertEquals(7, miojo(2, 5, 7))
        
    def test_miojo_com_tempo_3_e_amp_5_e_8(self):
        self.assertEquals(8, miojo(3, 5, 8))

    def test_miojo_tempo_com_4_e_amp_6_e_8(self):
        self.assertEquals(12, miojo(4, 6, 8))

    def test_miojo_tempo_com_4_e_amp_50_e_100(self):
        self.assertRaises(Exception, miojo, 4, 50, 100)

    def test_miojo_tempo_com_4_e_amp_50_e_50(self):
        self.assertRaises(Exception, miojo, 4, 50, 50)

    def test_miojo_tempo_com_3_e_amp_7_e_9(self):
        self.assertEquals(21, miojo(3, 7, 9))

    def test_miojo_tempo_com_3_e_amp_7_e_9(self):
        self.assertEquals(18, miojo(4, 7, 9))

if __name__ == "__main__":
    unittest.main()
