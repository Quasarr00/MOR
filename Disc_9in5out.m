
% Disc_9in5out.m
%
% Model exported on Jun 29 2023, 15:31 by COMSOL 5.5.0.359.

%%%%%%%%% Run the model and create a file matrices.mat containing the
%%%%%%%%% matrices of the state space model that describes the system.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\cipri\Desktop\Phyton ROMs for COMSOL 5.5\Mark 3');

model.label('Disc (9in5out).mph');

model.param.set('input1', '8 [W]');
model.param.set('input2', '100 [W]');
model.param.set('input3', '100 [W]');
model.param.set('input4', '30 [W]');
model.param.set('input5', '1 [W]');
model.param.set('input6', '1 [W]');
model.param.set('input7', '1 [W]');
model.param.set('input8', '50 [W]');
model.param.set('input9', '62 [W]');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 3);

model.result.table.create('tbl1', 'Table');
model.result.table.create('evl3', 'Table');

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').create('cyl1', 'Cylinder');
model.component('comp1').geom('geom1').feature('cyl1').set('h', 0.05);
model.component('comp1').geom('geom1').create('pt1', 'Point');
model.component('comp1').geom('geom1').feature('pt1').active(false);
model.component('comp1').geom('geom1').feature('pt1').label('observation point 1');
model.component('comp1').geom('geom1').feature('pt1').set('p', [0.3 0.3 0]);
model.component('comp1').geom('geom1').create('pt2', 'Point');
model.component('comp1').geom('geom1').feature('pt2').active(false);
model.component('comp1').geom('geom1').feature('pt2').label('observation point 2');
model.component('comp1').geom('geom1').feature('pt2').set('p', [-0.3 0.3 0]);
model.component('comp1').geom('geom1').create('pt3', 'Point');
model.component('comp1').geom('geom1').feature('pt3').active(false);
model.component('comp1').geom('geom1').feature('pt3').label('observation point 3');
model.component('comp1').geom('geom1').feature('pt3').set('p', [0.3 -0.3 0]);
model.component('comp1').geom('geom1').create('pt4', 'Point');
model.component('comp1').geom('geom1').feature('pt4').active(false);
model.component('comp1').geom('geom1').feature('pt4').label('observation point 4');
model.component('comp1').geom('geom1').feature('pt4').set('p', [-0.3 -0.3 0]);
model.component('comp1').geom('geom1').create('wp1', 'WorkPlane');
model.component('comp1').geom('geom1').feature('wp1').set('unite', true);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').label('actuator 1');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c1').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c2', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c2').label('actuator 2');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c2').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c2').set('pos', [0.3 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c2').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c3', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c3').label('actuator 3');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c3').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c3').set('pos', [0.3 0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c3').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c4', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c4').label('actuator 4');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c4').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c4').set('pos', [0 0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c4').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c5', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c5').label('actuator 5');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c5').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c5').set('pos', [0.3 -0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c5').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c6', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c6').label('actuator 6');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c6').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c6').set('pos', [-0.3 0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c6').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c7', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c7').label('actuator 7');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c7').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c7').set('pos', [-0.3 0]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c7').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c8', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c8').label('actuator 8');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c8').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c8').set('pos', [0 -0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c8').set('r', 0.03);
model.component('comp1').geom('geom1').feature('wp1').geom.create('c9', 'Circle');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c9').label('actuator 9');
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c9').set('selresult', true);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c9').set('pos', [-0.3 -0.3]);
model.component('comp1').geom('geom1').feature('wp1').geom.feature('c9').set('r', 0.03);
model.component('comp1').geom('geom1').run;
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('Enu', 'Young''s modulus and Poisson''s ratio');
model.component('comp1').material('mat1').propertyGroup.create('Murnaghan', 'Murnaghan');
model.component('comp1').material('mat1').propertyGroup.create('Lame', ['Lam' native2unicode(hex2dec({'00' 'e9'}), 'unicode') ' parameters']);

model.component('comp1').physics.create('ht', 'HeatTransfer', 'geom1');
model.component('comp1').physics('ht').create('hf1', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf1').selection.set([9]);
model.component('comp1').physics('ht').create('hf2', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf2').selection.set([14]);
model.component('comp1').physics('ht').create('hf3', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf3').selection.set([15]);
model.component('comp1').physics('ht').create('hf4', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf4').selection.set([10]);
model.component('comp1').physics('ht').create('hf5', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf5').selection.set([7]);
model.component('comp1').physics('ht').create('hf6', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf6').selection.set([6]);
model.component('comp1').physics('ht').create('hf7', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf7').selection.set([5]);
model.component('comp1').physics('ht').create('hf8', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf8').selection.set([8]);
model.component('comp1').physics('ht').create('hf9', 'HeatFluxBoundary', 2);
model.component('comp1').physics('ht').feature('hf9').selection.set([13]);
model.component('comp1').physics('ht').create('sar1', 'SurfaceToAmbientRadiation', 2);
model.component('comp1').physics('ht').feature('sar1').selection.set([1 2 3 4 11 12]);

model.component('comp1').mesh('mesh1').autoMeshSize(7);

model.component('comp1').probe.create('pdom1', 'DomainPoint');
model.component('comp1').probe.create('pdom2', 'DomainPoint');
model.component('comp1').probe.create('pdom3', 'DomainPoint');
model.component('comp1').probe.create('pdom4', 'DomainPoint');
model.component('comp1').probe.create('pdom5', 'DomainPoint');

model.result.table('tbl1').label('Probe Table 1');
model.result.table('evl3').label('Evaluation 3D');
model.result.table('evl3').comments('Interactive 3D values');

model.component('comp1').view('view2').axis.set('xmin', -0.5250000357627869);
model.component('comp1').view('view2').axis.set('xmax', 0.5250000357627869);
model.component('comp1').view('view2').axis.set('ymin', -0.4599558115005493);
model.component('comp1').view('view2').axis.set('ymax', 0.4599558115005493);

model.component('comp1').material('mat1').label('Aluminum');
model.component('comp1').material('mat1').set('family', 'aluminum');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').descr('relpermeability_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', '900[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').descr('heatcapacity_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'238[W/(m*K)]' '0' '0' '0' '238[W/(m*K)]' '0' '0' '0' '238[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('def').descr('thermalconductivity_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'3.774e7[S/m]' '0' '0' '0' '3.774e7[S/m]' '0' '0' '0' '3.774e7[S/m]'});
model.component('comp1').material('mat1').propertyGroup('def').descr('electricconductivity_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').descr('relpermittivity_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalexpansioncoefficient', {'23e-6[1/K]' '0' '0' '0' '23e-6[1/K]' '0' '0' '0' '23e-6[1/K]'});
model.component('comp1').material('mat1').propertyGroup('def').descr('thermalexpansioncoefficient_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('def').set('density', '2700[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').descr('density_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('youngsmodulus', '70e9[Pa]');
model.component('comp1').material('mat1').propertyGroup('Enu').descr('youngsmodulus_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Enu').set('poissonsratio', '0.33');
model.component('comp1').material('mat1').propertyGroup('Enu').descr('poissonsratio_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('l', '-2.5e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('m', '-3.3e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').set('n', '-3.5e11[Pa]');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').descr('l_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').descr('m_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Murnaghan').descr('n_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '');
model.component('comp1').material('mat1').propertyGroup('Lame').set('lambLame', '5.1e10[Pa]');
model.component('comp1').material('mat1').propertyGroup('Lame').set('muLame', '2.6e10[Pa]');
model.component('comp1').material('mat1').propertyGroup('Lame').descr('lambLame_symmetry', '');
model.component('comp1').material('mat1').propertyGroup('Lame').descr('muLame_symmetry', '');

model.component('comp1').physics('ht').feature('init1').set('Tinit', '273.15[K]');
model.component('comp1').physics('ht').feature('hf1').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf1').set('P0', 'input1');
model.component('comp1').physics('ht').feature('hf2').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf2').set('P0', 'input2');
model.component('comp1').physics('ht').feature('hf3').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf3').set('P0', 'input3');
model.component('comp1').physics('ht').feature('hf4').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf4').set('P0', 'input4');
model.component('comp1').physics('ht').feature('hf5').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf5').set('P0', 'input5');
model.component('comp1').physics('ht').feature('hf6').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf6').set('P0', 'input6');
model.component('comp1').physics('ht').feature('hf7').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf7').set('P0', 'input7');
model.component('comp1').physics('ht').feature('hf8').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf8').set('P0', 'input8');
model.component('comp1').physics('ht').feature('hf9').set('HeatFluxType', 'HeatRate');
model.component('comp1').physics('ht').feature('hf9').set('P0', 'input9');
model.component('comp1').physics('ht').feature('sar1').set('epsilon_rad_mat', 'userdef');
model.component('comp1').physics('ht').feature('sar1').set('epsilon_rad', 0.7);

model.component('comp1').probe('pdom1').set('coords3', [0 0 0.05]);
model.component('comp1').probe('pdom1').feature('ppb1').set('unit', 'degC');
model.component('comp1').probe('pdom1').feature('ppb1').set('table', 'tbl1');
model.component('comp1').probe('pdom1').feature('ppb1').set('window', 'window1');
model.component('comp1').probe('pdom2').set('coords3', [0.4 0 0.05]);
model.component('comp1').probe('pdom2').feature('ppb2').label('Point Probe Expression 1');
model.component('comp1').probe('pdom2').feature('ppb2').set('unit', 'degC');
model.component('comp1').probe('pdom2').feature('ppb2').set('table', 'tbl1');
model.component('comp1').probe('pdom2').feature('ppb2').set('window', 'window1');
model.component('comp1').probe('pdom3').set('coords3', [0.06 -0.41 0.05]);
model.component('comp1').probe('pdom3').feature('ppb3').label('Point Probe Expression 1');
model.component('comp1').probe('pdom3').feature('ppb3').set('unit', 'degC');
model.component('comp1').probe('pdom3').feature('ppb3').set('table', 'tbl1');
model.component('comp1').probe('pdom3').feature('ppb3').set('window', 'window1');
model.component('comp1').probe('pdom4').set('coords3', [-0.4 0 0.05]);
model.component('comp1').probe('pdom4').feature('ppb4').label('Point Probe Expression 1');
model.component('comp1').probe('pdom4').feature('ppb4').set('unit', 'degC');
model.component('comp1').probe('pdom4').feature('ppb4').set('table', 'tbl1');
model.component('comp1').probe('pdom4').feature('ppb4').set('window', 'window1');
model.component('comp1').probe('pdom5').set('coords3', [0 -0.4 0.05]);
model.component('comp1').probe('pdom5').feature('ppb5').label('Point Probe Expression 1');
model.component('comp1').probe('pdom5').feature('ppb5').set('unit', 'degC');
model.component('comp1').probe('pdom5').feature('ppb5').set('table', 'tbl1');
model.component('comp1').probe('pdom5').feature('ppb5').set('window', 'window1');

model.study.create('std1');
model.study('std1').create('time', 'Transient');

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').create('d1', 'Direct');
model.sol('sol1').feature('t1').create('i1', 'Iterative');
model.sol('sol1').feature('t1').create('i2', 'Iterative');
model.sol('sol1').feature('t1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('cs').create('d1', 'Direct');
model.sol('sol1').feature('t1').feature('i2').create('mg1', 'Multigrid');
model.sol('sol1').feature('t1').feature('i2').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('t1').feature('i2').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('t1').feature('i2').feature('mg1').feature('cs').create('d1', 'Direct');
model.sol('sol1').feature('t1').feature.remove('fcDef');

model.result.dataset.create('dset2', 'Solution');
model.result.dataset.create('cpt1', 'CutPoint3D');
model.result.dataset.create('cpt2', 'CutPoint3D');
model.result.dataset.create('cpt3', 'CutPoint3D');
model.result.dataset.create('cpt4', 'CutPoint3D');
model.result.dataset.create('cpt5', 'CutPoint3D');
model.result.dataset('dset2').set('probetag', 'pdom5');
model.result.dataset('cpt1').set('probetag', 'pdom1');
model.result.dataset('cpt1').set('data', 'dset2');
model.result.dataset('cpt2').set('probetag', 'pdom2');
model.result.dataset('cpt2').set('data', 'dset2');
model.result.dataset('cpt3').set('probetag', 'pdom3');
model.result.dataset('cpt3').set('data', 'dset2');
model.result.dataset('cpt4').set('probetag', 'pdom4');
model.result.dataset('cpt4').set('data', 'dset2');
model.result.dataset('cpt5').set('probetag', 'pdom5');
model.result.dataset('cpt5').set('data', 'dset2');
model.result.numerical.create('pev1', 'EvalPoint');
model.result.numerical.create('pev2', 'EvalPoint');
model.result.numerical.create('pev3', 'EvalPoint');
model.result.numerical.create('pev4', 'EvalPoint');
model.result.numerical.create('pev5', 'EvalPoint');
model.result.numerical('pev1').set('probetag', 'pdom1/ppb1');
model.result.numerical('pev2').set('probetag', 'pdom2/ppb2');
model.result.numerical('pev3').set('probetag', 'pdom3/ppb3');
model.result.numerical('pev4').set('probetag', 'pdom4/ppb4');
model.result.numerical('pev5').set('probetag', 'pdom5/ppb5');
model.result.create('pg1', 'PlotGroup3D');
model.result.create('pg2', 'PlotGroup3D');
model.result.create('pg3', 'PlotGroup1D');
model.result('pg1').create('surf1', 'Surface');
model.result('pg2').create('iso1', 'Isosurface');
model.result('pg3').set('probetag', 'window1_default');
model.result('pg3').create('tblp1', 'Table');
model.result('pg3').create('glob1', 'Global');
model.result('pg3').feature('tblp1').set('probetag', 'pdom1/ppb1,pdom2/ppb2,pdom3/ppb3,pdom4/ppb4,pdom5/ppb5');

model.component('comp1').probe('pdom1').genResult([]);
model.component('comp1').probe('pdom2').genResult([]);
model.component('comp1').probe('pdom3').genResult([]);
model.component('comp1').probe('pdom4').genResult([]);
model.component('comp1').probe('pdom5').genResult([]);

model.study('std1').feature('time').set('tlist', 'range(0,100, 3000)');

model.sol('sol1').attach('std1');
model.sol('sol1').feature('v1').set('clist', {'range(0,100, 3000)' '3.0[s]'});
model.sol('sol1').feature('t1').set('tlist', 'range(0,100, 3000)');
model.sol('sol1').feature('t1').set('maxorder', 2);
model.sol('sol1').feature('t1').set('estrat', 'exclude');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'd1');
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 5);
model.sol('sol1').feature('t1').feature('fc1').set('damp', 0.9);
model.sol('sol1').feature('t1').feature('fc1').set('jtech', 'once');
model.sol('sol1').feature('t1').feature('fc1').set('stabacc', 'aacc');
model.sol('sol1').feature('t1').feature('fc1').set('aaccdim', 5);
model.sol('sol1').feature('t1').feature('fc1').set('aaccmix', 0.9);
model.sol('sol1').feature('t1').feature('fc1').set('aaccdelay', 1);
model.sol('sol1').feature('t1').feature('d1').label('Direct, Heat Transfer Variables (ht)');
model.sol('sol1').feature('t1').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('t1').feature('d1').set('pivotperturb', 1.0E-13);
model.sol('sol1').feature('t1').feature('i1').label('AMG, Heat Transfer Variables (ht)');
model.sol('sol1').feature('t1').feature('i1').feature('mg1').set('prefun', 'saamg');
model.sol('sol1').feature('t1').feature('i1').feature('mg1').set('saamgcompwise', true);
model.sol('sol1').feature('t1').feature('i1').feature('mg1').set('usesmooth', false);
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.9);
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.9);
model.sol('sol1').feature('t1').feature('i1').feature('mg1').feature('cs').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').feature('t1').feature('i2').label('GMG, Heat Transfer Variables (ht)');
model.sol('sol1').feature('t1').feature('i2').set('rhob', 20);
model.sol('sol1').feature('t1').feature('i2').feature('mg1').feature('cs').feature('d1').set('linsolver', 'pardiso');
model.sol('sol1').runAll;

model.result.dataset('dset2').label('Probe Solution 2');
model.result.dataset('dset2').set('frametype', 'spatial');
model.result.dataset('cpt1').set('data', 'dset2');
model.result.dataset('cpt2').set('data', 'dset2');
model.result.dataset('cpt3').set('data', 'dset2');
model.result.dataset('cpt4').set('data', 'dset2');
model.result.dataset('cpt5').set('data', 'dset2');
model.result.dataset.remove('dset3');
model.result.numerical('pev2').label('Point Probe Expression 1.5');
model.result.numerical('pev3').label('Point Probe Expression 1.3.1');
model.result.numerical('pev4').label('Point Probe Expression 1.2');
model.result.numerical('pev5').setResult;
model.result('pg1').label('Temperature (ht)');
model.result('pg1').set('looplevel', [11]);
model.result('pg1').feature('surf1').label('Surface');
model.result('pg1').feature('surf1').set('colortable', 'ThermalLight');
model.result('pg1').feature('surf1').set('resolution', 'normal');
model.result('pg2').label('Isothermal Contours (ht)');
model.result('pg2').set('looplevel', [11]);
model.result('pg2').feature('iso1').label('Isosurface');
model.result('pg2').feature('iso1').set('number', 10);
model.result('pg2').feature('iso1').set('levelrounding', false);
model.result('pg2').feature('iso1').set('colortable', 'ThermalLight');
model.result('pg2').feature('iso1').set('resolution', 'normal');
model.result('pg3').label('Probe Plot Group 3');
model.result('pg3').set('xlabel', 'Time (s)');
model.result('pg3').set('windowtitle', 'Probe Plot 1');
model.result('pg3').set('xlabelactive', false);
model.result('pg3').feature('tblp1').label('Probe Table Graph 1');
model.result('pg3').feature('tblp1').set('legend', true);
model.result('pg3').feature('glob1').set('expr', {''});
model.result('pg3').feature('glob1').set('unit', {''});
model.result('pg3').feature('glob1').set('descr', {''});


%%% Extract matrices
M = mphstate(model, 'sol1', 'out', {'Mc' 'MA' 'MB' 'C' 'D' 'x0', 'Null' 'ud'}, ...
    'input', {'input1', 'input2', 'input3', 'input4', 'input5', 'input6', 'input7', 'input8', 'input9'}, 'output', {'comp1.ppb1', 'comp1.ppb2', 'comp1.ppb3',...
    'comp1.ppb4', 'comp1.ppb5'}, 'sparse', 'on', 'keepfeature', 'on', 'initmethod', 'init', 'initsol', 'zero');
E=M.Mc; A=M.MA; B=M.MB; C=M.C; x0=M.x0; NullMatrix=M.Null; udVector=M.ud;

%%% Save matrices in matrices.mat
save('matrices.mat', 'E', 'A', 'B', 'C', 'x0');


