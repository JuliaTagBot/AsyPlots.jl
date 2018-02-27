using AsyPlots
using Base.Test

# write your own tests here

# 2D
Pen()
Arrow()
Arrow3()
Arrow(5)
Arrow(name="MidArrow",size=3)
Point(1,2,label="hey",pen=Pen(linewidth=3))
Path([0 0; 1 1];arrow=Arrow())
Circle((0,0),1)
Polygon([im,1,0])

Point(1,2,3,label="hey",pen=Pen(linewidth=3))
Path([0 0 0; 1 1 1])
Polygon([0 0 0; 1 1 1; 0 0 1])

z = randn(5,5)
S = Surface(z)

P = Point(1,2,color="DarkGreen")
Q = Path([0 0; 0 1; 1 1; 0 2],spline=true,label="Label(\"A\",Relative(0.8))")
C = Circle((0,0),1.0,linewidth=3,opacity=0.2,color="Purple")
Plot(P,Q,C,axes=true,axispen=Pen(color="DarkGreen"),width=150)

plot(x->x^2,0,1)

# 3D 
plot(rand(4,4);meshpen=Pen(color="MidnightBlue"),
               spline=false) 

# Transformations
Shift(1,2)*Circle((0,2),1)