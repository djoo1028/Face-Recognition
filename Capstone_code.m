EW1 = imresize( double ( rgb2gray( imread('emma1','jpg'))), [120 80]);
EW2 = imresize( double ( rgb2gray( imread('emma2','jpg'))), [120 80]);
EW3 = imresize( double ( rgb2gray( imread('emma3','jpg'))), [120 80]);
EW4 = imresize( double ( rgb2gray( imread('emma4','jpg'))), [120 80]);
EW5 = imresize( double ( rgb2gray( imread('emma5','jpg'))), [120 80]);

subplot(4,5,1), pcolor(flipud(EW1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,2), pcolor(flipud(EW2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,3), pcolor(flipud(EW3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,4), pcolor(flipud(EW4)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,5), pcolor(flipud(EW5)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

ES1 = imresize( double ( rgb2gray( imread('Emma_stone_1','jpg'))), [120 80]);
ES2 = imresize( double ( rgb2gray( imread('Emma_stone_2','jpg'))), [120 80]);
ES3 = imresize( double ( rgb2gray( imread('Emma_stone_3','jpg'))), [120 80]);
ES4 = imresize( double ( rgb2gray( imread('Emma_stone_4','jpg'))), [120 80]);
ES5 = imresize( double ( rgb2gray( imread('Emma_stone_5','jpg'))), [120 80]);

subplot(4,5,6), pcolor(flipud(ES1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,7), pcolor(flipud(ES2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,8), pcolor(flipud(ES3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,9), pcolor(flipud(ES4)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,10), pcolor(flipud(ES5)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

T1 = imresize( double ( rgb2gray( imread('TOM1','jpg'))), [120 80]);
T2 = imresize( double ( rgb2gray( imread('TOM2','jpg'))), [120 80]);
T3 = imresize( double ( rgb2gray( imread('TOM3','jpg'))), [120 80]);
T4 = imresize( double ( rgb2gray( imread('TOM4','jpg'))), [120 80]);
T5 = imresize( double ( rgb2gray( imread('TOM5','jpg'))), [120 80]);

subplot(4,5,11), pcolor(flipud(T1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,12), pcolor(flipud(T2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,13), pcolor(flipud(T3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,14), pcolor(flipud(T4)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,15), pcolor(flipud(T5)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

C1 = imresize( double ( rgb2gray( imread('Chris1','jpg'))), [120 80]);
C2 = imresize( double ( rgb2gray( imread('Chris2','jpg'))), [120 80]);
C3 = imresize( double ( rgb2gray( imread('Chris3','jpg'))), [120 80]);
C4 = imresize( double ( rgb2gray( imread('Chris4','jpg'))), [120 80]);
C5 = imresize( double ( rgb2gray( imread('Chris5','jpg'))), [120 80]);

subplot(4,5,16), pcolor(flipud(C1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,17), pcolor(flipud(C2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,18), pcolor(flipud(C3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,19), pcolor(flipud(C4)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(4,5,20), pcolor(flipud(C5)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

% Average faces
AveEW=(EW1 + EW2 + EW3 + EW4 + EW5) / 5;
AveES=(ES1 + ES2 + ES3 + ES4 + ES5) / 5;
AveT=(T1 + T2 + T3 + T4 + T5) / 5;
AveC=(C1 + C2 + C3 + C4 + C5) / 5;

figure(2),
subplot(2,2,1), pcolor(flipud(AveEW)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,2,2), pcolor(flipud(AveES)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,2,3), pcolor(flipud(AveT)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,2,4), pcolor(flipud(AveC)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

% data matrix
D = [reshape(EW1, 1, 120*80)
     reshape(EW2, 1, 120*80)
     reshape(EW3, 1, 120*80)
     reshape(EW4, 1, 120*80)
     reshape(EW5, 1, 120*80)
     reshape(ES1, 1, 120*80)
     reshape(ES2, 1, 120*80)
     reshape(ES3, 1, 120*80)
     reshape(ES4, 1, 120*80)
     reshape(ES5, 1, 120*80)
     reshape(T1, 1, 120*80)
     reshape(T2, 1, 120*80)
     reshape(T3, 1, 120*80)
     reshape(T4, 1, 120*80)
     reshape(T5, 1, 120*80)
     reshape(C1, 1, 120*80)
     reshape(C2, 1, 120*80)
     reshape(C3, 1, 120*80)
     reshape(C4, 1, 120*80)
     reshape(C5, 1, 120*80)];
 
 A=(D')*(D);
 size(A)
 
 [V,D] = eigs(A,20,'lm');
 
 
figure(3)
subplot(2,3,1), face1 = reshape(V(:,1),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,3,2), face1 = reshape(V(:,2),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,3,3), face1 = reshape(V(:,3),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,3,4), face1 = reshape(V(:,4),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,3,5), face1 = reshape(V(:,5),120,80); pcolor(flipud(face1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(2,3,6), semilogy(diag(D), 'ko', 'Linewidth',[2])
set(gca, 'Fontsize',[14])

figure(4)
vecEW=reshape(AveEW,1,120*80);
vecES=reshape(AveES,1,120*80);
vecT=reshape(AveT,1,120*80);
vecC=reshape(AveC,1,120*80);

projEW=vecEW*V;
projES=vecES*V;
projT=vecT*V;
projC=vecC*V;

subplot(2,2,1), bar(projEW(2:20)), set(gca,'Xlim',[0 20], 'Ylim',[-2000 2000],'Xtick',[],'Ytick',[]),
text(6,-1700, 'Emma Watson', 'Fontsize', [14])
subplot(2,2,2), bar(projES(2:20)), set(gca,'Xlim',[0 20], 'Ylim',[-2000 2000],'Xtick',[],'Ytick',[]),
text(8,-1700, 'Emma Stone', 'Fontsize', [14])
subplot(2,2,3), bar(projT(2:20)), set(gca,'Xlim',[0 20], 'Ylim',[-2000 2000],'Xtick',[],'Ytick',[]),
text(9,-1700, 'Tom Cruise', 'Fontsize', [14])
subplot(2,2,4), bar(projC(2:20)), set(gca,'Xlim',[0 20], 'Ylim',[-2000 2000],'Xtick',[],'Ytick',[]),
text(9,-1700, 'Chris Evans', 'Fontsize', [14])


%testing
Test1 = imresize( double( rgb2gray( imread('Emma1','jpg') ) ), [120 80] );
Test2 = imresize( double( rgb2gray( imread('Test5','jpg') ) ), [120 80] );
Test3 = imresize( double( rgb2gray( imread('Test3','jpg') ) ), [120 80] );
%Test4 = imresize( double( rgb2gray( imread('Test4','jpg') ) ), [120 80] );
%Test5 = imresize( double( rgb2gray( imread('Test5','jpg') ) ), [120 80] );

vec1=reshape(Test1, 1, 120*80);
vec2=reshape(Test2, 1, 120*80);
vec3=reshape(Test3, 1, 120*80);
%vec4=reshape(Test4, 1, 120*80);
%vec5=reshape(Test5, 1, 120*80);

proj1=vec1*V;
proj2=vec2*V;
proj3=vec3*V;
%proj4=vec4*V;
%proj5=vec5*V;

recon1=V*proj1'; rec1=reshape(recon1,120,80);
recon2=V*proj2'; rec2=reshape(recon2,120,80);
recon3=V*proj3'; rec3=reshape(recon3,120,80);
%recon4=V*proj4'; rec4=reshape(recon4,120,80);
%recon5=V*proj5'; rec5=reshape(recon5,120,80);

figure(5)
subplot(3,4,1), pcolor(flipud(Test1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(3,4,5), pcolor(flipud(Test2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(3,4,9), pcolor(flipud(Test3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

subplot(3,4,2), bar(proj1(2:20)), set(gca, 'Xlim',[0 20], 'Ylim', [-2000 2000], 'Xtick',[],'Ytick',[])
subplot(3,4,6), bar(proj2(2:20)), set(gca, 'Xlim',[0 20], 'Ylim', [-2000 2000], 'Xtick',[],'Ytick',[])
subplot(3,4,10), bar(proj3(2:20)), set(gca, 'Xlim',[0 20], 'Ylim', [-2000 2000], 'Xtick',[],'Ytick',[])

subplot(3,4,3), pcolor(flipud(rec1)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(3,4,7), pcolor(flipud(rec2)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])
subplot(3,4,11), pcolor(flipud(rec3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])

%compare
vecC=reshape(AveEW,1,120*80);

pEW1=reshape(EW1, 1, 120*80)*V;
pEW2=reshape(EW2, 1, 120*80)*V;
pEW3=reshape(EW3, 1, 120*80)*V;
pEW4=reshape(EW4, 1, 120*80)*V;
pEW5=reshape(EW5, 1, 120*80)*V;

pES1=reshape(ES1, 1, 120*80)*V;
pES2=reshape(ES2, 1, 120*80)*V;
pES3=reshape(ES3, 1, 120*80)*V;
pES4=reshape(ES4, 1, 120*80)*V;
pES5=reshape(ES5, 1, 120*80)*V;

pT1=reshape(T1, 1, 120*80)*V;
pT2=reshape(T2, 1, 120*80)*V;
pT3=reshape(T3, 1, 120*80)*V;
pT4=reshape(T4, 1, 120*80)*V;
pT5=reshape(T5, 1, 120*80)*V;

pC1=reshape(C1, 1, 120*80)*V;
pC2=reshape(C2, 1, 120*80)*V;
pC3=reshape(C3, 1, 120*80)*V;
pC4=reshape(C4, 1, 120*80)*V;
pC5=reshape(C5, 1, 120*80)*V;

comps(1)=norm(proj1-pEW1)/norm(proj1);
comps(2)=norm(proj1-pEW2)/norm(proj1);
comps(3)=norm(proj1-pEW3)/norm(proj1);
comps(4)=norm(proj1-pEW4)/norm(proj1);
comps(5)=norm(proj1-pEW5)/norm(proj1);
subplot(3,4,4), bar(comps), set(gca, 'Xlim',[0 6], 'Ylim',[0 1], 'Xtick',[1 2 3 4 5],'Ytick',[0 1]);
text(1:length(comps),comps,num2str(comps','%.1f'),'vert','bottom','horiz','center'); 
box off



comps2(1)=norm(proj2-pEW1)/norm(proj2);
comps2(2)=norm(proj2-pEW2)/norm(proj2);
comps2(3)=norm(proj2-pEW3)/norm(proj2);
comps2(4)=norm(proj2-pEW4)/norm(proj2);
comps2(5)=norm(proj2-pEW5)/norm(proj2);
subplot(3,4,8), bar(comps2), set(gca, 'Xlim',[0 6], 'Ylim',[0 1], 'Xtick',[1 2 3 4 5],'Ytick',[0 1]);
text(1:length(comps2),comps2,num2str(comps2','%.1f'),'vert','bottom','horiz','center'); 
box off

comps3(1)=norm(proj3-pEW1)/norm(proj3);
comps3(2)=norm(proj3-pEW2)/norm(proj3);
comps3(3)=norm(proj3-pEW3)/norm(proj3);
comps3(4)=norm(proj3-pEW4)/norm(proj3);
comps3(5)=norm(proj3-pEW5)/norm(proj3);
subplot(3,4,12), bar(comps3), set(gca, 'Xlim',[0 6], 'Ylim',[0 1], 'Xtick',[1 2 3 4 5],'Ytick',[0 1]);
text(1:length(comps3),comps3,num2str(comps3','%.1f'),'vert','bottom','horiz','center'); 
box off

figure(6)
subplot(2,4,1), pcolor(flipud(Test3)), shading interp, colormap(gray), set(gca, 'Xtick',[], 'Ytick',[])
subplot(2,4,2), bar(proj3(2:20)), set(gca, 'Xlim', [0 20], 'Ylim', [-2000 2000], 'Xtick',[], 'Ytick',[])
subplot(2,4,3), pcolor(flipud(rec3)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])


col(1)=norm(proj3-pEW1)/norm(proj3);
col(2)=norm(proj3-pEW2)/norm(proj3);
col(3)=norm(proj3-pEW3)/norm(proj3);
col(4)=norm(proj3-pEW4)/norm(proj3);
col(5)=norm(proj3-pEW5)/norm(proj3);

co2(1)=norm(proj3-pES1)/norm(proj3);
co2(2)=norm(proj3-pES2)/norm(proj3);
co2(3)=norm(proj3-pES3)/norm(proj3);
co2(4)=norm(proj3-pES4)/norm(proj3);
co2(5)=norm(proj3-pES5)/norm(proj3);

co3(1)=norm(proj3-pT1)/norm(proj3);
co3(2)=norm(proj3-pT2)/norm(proj3);
co3(3)=norm(proj3-pT3)/norm(proj3);
co3(4)=norm(proj3-pT4)/norm(proj3);
co3(5)=norm(proj3-pT5)/norm(proj3);

co4(1)=norm(proj3-pC1)/norm(proj3);
co4(2)=norm(proj3-pC2)/norm(proj3);
co4(3)=norm(proj3-pC3)/norm(proj3);
co4(4)=norm(proj3-pC4)/norm(proj3);
co4(5)=norm(proj3-pC5)/norm(proj3);


subplot(2,4,5), bar(col), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Emma Watson', 'Fontsize', [8])

subplot(2,4,6), bar(co2), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Emma Stone', 'Fontsize', [8])

subplot(2,4,7), bar(co3), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Tom cruise', 'Fontsize', [8])

subplot(2,4,8), bar(co4), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Chris Evans', 'Fontsize', [8])


%{
figure(7)
subplot(2,4,1), pcolor(flipud(Test5)), shading interp, colormap(gray), set(gca, 'Xtick',[], 'Ytick',[])
subplot(2,4,2), bar(proj5(2:20)), set(gca, 'Xlim', [0 20], 'Ylim', [-2000 2000], 'Xtick',[], 'Ytick',[])
subplot(2,4,3), pcolor(flipud(rec5)), shading interp, colormap(gray), set(gca, 'Xtick',[],'Ytick',[])


col(1)=norm(proj5-pEW1)/norm(proj5);
col(2)=norm(proj5-pEW2)/norm(proj5);
col(3)=norm(proj5-pEW3)/norm(proj5);
col(4)=norm(proj5-pEW4)/norm(proj5);
col(5)=norm(proj5-pEW5)/norm(proj5);

co2(1)=norm(proj5-pES1)/norm(proj5);
co2(2)=norm(proj5-pES2)/norm(proj5);
co2(3)=norm(proj5-pES3)/norm(proj5);
co2(4)=norm(proj5-pES4)/norm(proj5);
co2(5)=norm(proj5-pES5)/norm(proj5);

co3(1)=norm(proj5-pT1)/norm(proj5);
co3(2)=norm(proj5-pT2)/norm(proj5);
co3(3)=norm(proj5-pT3)/norm(proj5);
co3(4)=norm(proj5-pT4)/norm(proj5);
co3(5)=norm(proj5-pT5)/norm(proj5);

co4(1)=norm(proj5-pC1)/norm(proj5);
co4(2)=norm(proj5-pC2)/norm(proj5);
co4(3)=norm(proj5-pC3)/norm(proj5);
co4(4)=norm(proj5-pC4)/norm(proj5);
co4(5)=norm(proj5-pC5)/norm(proj5);


subplot(2,4,5), bar(col), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Emma Watson', 'Fontsize', [8])

subplot(2,4,6), bar(co2), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Emma Stone', 'Fontsize', [8])

subplot(2,4,7), bar(co3), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Tom cruise', 'Fontsize', [8])

subplot(2,4,8), bar(co4), set(gca,'Xlim',[0 6], 'Ylim', [0 1], 'Xtick', [], 'Ytick', [])
text(1,-0.2, 'Chris Evans', 'Fontsize', [8])
%}

