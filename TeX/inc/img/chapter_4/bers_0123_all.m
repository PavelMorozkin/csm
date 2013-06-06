clear
clc

% bch+cnv
bch_cnv_cbers1 = [0.009844,0.011813,0.014176,0.017011,0.020413,0.024496,0.029395,0.035275,0.042329,0.050795,0.060954,0.073145,0.087774,0.105329,0.126395,0.151674,0.182009,0.218411,0.262093,0.314511,0.377413,0.452896,0.543475,0.652170,0.782604,0.939125]
bch_cnv_rbers1 = [0.000019,0.000000,0.000019,0.000064,0.000096,0.000128,0.000185,0.000786,0.001374,0.002838,0.005989,0.011715,0.022932,0.041921,0.073258,0.118976,0.183657,0.254557,0.327023,0.387735,0.439665,0.472095,0.492631,0.500601,0.502576,0.498262]
bch_cnv_cbers2 = [0.011813,0.014176,0.017011,0.020413,0.024496,0.029395,0.035275,0.042329,0.050795,0.060954,0.073145,0.087774,0.105329,0.126395,0.151674,0.182009,0.218411,0.262093,0.314511,0.377413,0.452896,0.543475,0.652170,0.782604,0.939125]
bch_cnv_rbers2 = [0.000006,0.000019,0.000032,0.000051,0.000179,0.000179,0.000793,0.001579,0.002966,0.005835,0.012489,0.023840,0.041742,0.072721,0.120337,0.180014,0.253841,0.322063,0.389563,0.434667,0.471411,0.490598,0.500805,0.503809,0.499022]
bch_cnv_cbers3 = [0.011813,0.014176,0.017011,0.020413,0.024496,0.029395,0.035275,0.042329,0.050795,0.060954,0.073145,0.087774,0.105329,0.126395,0.151674,0.182009,0.218411,0.262093,0.314511,0.377413,0.452896,0.543475,0.652170,0.782604,0.939125]
bch_cnv_rbers3 = [0.000038,0.000019,0.000013,0.000121,0.000198,0.000403,0.000767,0.001707,0.002998,0.006353,0.012137,0.022888,0.042209,0.074575,0.122568,0.184501,0.251106,0.324632,0.385798,0.439697,0.470740,0.491742,0.498549,0.500780,0.497245]

% cnv+theory
cnv_t_cbers1 = [0.004748, 0.005697, 0.006836, 0.008204, 0.009844, 0.011813, 0.014176, 0.017011, 0.020413, 0.024496, 0.029395, 0.035275, 0.042329, 0.050795, 0.060954, 0.073145, 0.087774, 0.105329, 0.126395, 0.151674, 0.182009, 0.218411, 0.262093, 0.314511, 0.377413, 0.452896, 0.543475, 0.652170, 0.782604, 0.939125];
cnv_t_rbers1 = [0.000013, 0.000013, 0.000026, 0.000019, 0.000070, 0.000058, 0.000134, 0.000198, 0.000383, 0.000882, 0.001329, 0.002563, 0.005605, 0.010578, 0.017404, 0.029976, 0.049041, 0.075393, 0.118401, 0.169200, 0.231081, 0.291832, 0.356468, 0.408072, 0.450658, 0.477330, 0.493736, 0.501208, 0.501617, 0.491250];
cnv_t_cbers2 = [0.006836, 0.008204, 0.009844, 0.011813, 0.014176, 0.017011, 0.020413, 0.024496, 0.029395, 0.035275, 0.042329, 0.050795, 0.060954, 0.073145, 0.087774, 0.105329, 0.126395, 0.151674, 0.182009, 0.218411, 0.262093, 0.314511, 0.377413, 0.452896, 0.543475, 0.652170, 0.782604, 0.939125];
cnv_t_rbers2 = [0.000032, 0.000026, 0.000051, 0.000089, 0.000121, 0.000217, 0.000415, 0.000671, 0.001125, 0.002326, 0.004218, 0.008270, 0.014349, 0.023559, 0.041493, 0.065582, 0.105835, 0.155081, 0.220766, 0.287160, 0.349923, 0.406474, 0.451707, 0.477573, 0.495174, 0.502774, 0.499866, 0.492062];
cnv_t_cbers3 = [0.003297, 0.003956, 0.004748, 0.005697, 0.006836, 0.008204, 0.009844, 0.011813, 0.014176, 0.017011, 0.020413, 0.024496, 0.029395, 0.035275, 0.042329, 0.050795, 0.060954, 0.073145, 0.087774, 0.105329, 0.126395, 0.151674, 0.182009, 0.218411, 0.262093, 0.314511, 0.377413, 0.452896, 0.543475, 0.652170, 0.782604, 0.939125];
cnv_t_rbers3 = [0.000013, 0.000006, 0.000000, 0.000000, 0.000019, 0.000019, 0.000051, 0.000115, 0.000134, 0.000185, 0.000479, 0.000876, 0.001259, 0.002237, 0.004346, 0.007516, 0.013780, 0.023131, 0.040451, 0.066362, 0.103394, 0.154001, 0.216714, 0.286738, 0.351611, 0.406781, 0.450364, 0.474773, 0.493807, 0.499834, 0.500013, 0.488579];

% comparsion with theory
p = [0.000024, 0.000029, 0.000035, 0.000041, 0.000050, 0.000060, 0.000072, 0.000086, 0.000103, 0.000124, 0.000149, 0.000178, 0.000214, 0.000257, 0.000308, 0.000370, 0.000444, 0.000532, 0.000639, 0.000767, 0.000920, 0.001104, 0.001325, 0.001590, 0.001908, 0.002290, 0.002747, 0.003297, 0.003956, 0.004748, 0.005697, 0.006836, 0.008204, 0.009844, 0.011813, 0.014176, 0.017011, 0.020413, 0.024496, 0.029395, 0.035275, 0.042329, 0.050795, 0.060954, 0.073145, 0.087774, 0.105329, 0.126395, 0.151674, 0.182009, 0.218411, 0.262093, 0.314511, 0.377413, 0.452896, 0.543475, 0.652170, 0.782604, 0.939125];
D = 2 * sqrt(p.* (1 - p));
Pbtheor = (D.^ 5)./ (1 - 2*D.^2);

loglog(cnv_t_cbers1, cnv_t_rbers1, 'ro-', cnv_t_cbers2, cnv_t_rbers2, 'm*-', cnv_t_cbers3, cnv_t_rbers3, 'bx-', p, Pbtheor, 'k', bch_cnv_cbers1, bch_cnv_rbers1, 'gs-', bch_cnv_cbers2, bch_cnv_rbers2, 'm>-', bch_cnv_cbers3, bch_cnv_rbers3, 'c<-')
axis ([min(cnv_t_cbers1), max(cnv_t_cbers1), 1e-6, 0.5])
grid on
h = legend('Cnv enc. (dbuffer = 1)','Cnv enc. (dbuffer = 2)', 'Cnv enc. (dbuffer = 10)', 'Cnv enc. (theoretical bound)', 'BCH+cnv enc. (dbuffer = 1)', 'BCH+cnv enc. (dbuffer = 2)', 'BCH+cnv enc. (dbuffer = 10)'); 
%hold off;
set(h, 'Location','SouthEast')
xlabel('CH BER');
ylabel('RX BER');