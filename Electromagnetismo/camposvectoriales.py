#===============
#  AA1 Electromagnetismo, semiconductores y ondas 
#  José Luis Pére Manzano
#===============

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.cm as cm
import numpy as np

#=====================
#  First Exercice AA1
#=====================
fig = plt.figure('Apartado 1')

# Make the grid 
X, Y = np.meshgrid(np.arange(-2, 2, 0.2),
                    np.arange(-2, 2, 0.2))

U = np.ones((20, 20))
V = np.ones((20, 20))
W = np.ones((20, 20))

#===============
#  First subplot 1.a)
#===============
# set up the axes
ax = fig.add_subplot(2, 2, 1)
ax.set_title('F(x,y)=xî')
# set the function 
ax.quiver(X, Y, U, 0)
#===============
# Second subplot 1.b)
#===============
# set up the axes
ax = fig.add_subplot(2, 2, 2,)
ax.set_title('F(x,y)=yĵ')
# set the function
ax.quiver(X, Y, 0, V, color='r')
#===============
# Third subplot 1.c)
#===============
# set up the axes for the second plot
ax = fig.add_subplot(2, 2, 3)
ax.set_title('F(x,y)=xî+yĵ')
# set the function
ax.quiver(X, Y, U, V, color='g')
#===============
# Fourth subplot 1.d)
#===============
# set up the axes 
ax = fig.add_subplot(2, 2, 4)
ax.set_title('F(x,y)=x²î+2yĵ')
# set the function
U = U**2
V = 2*V
ax.quiver(X, Y, U, V, color='y')


#=====================
#  Second Exercice AA1
#=====================
fig2 = plt.figure('Apartado 2')
#  First subplot 2.a)
ax2 = fig2.add_subplot(1, 2, 1)
ax2.set_title('F(x,y)=yî-xĵ')
# set the function 
ax2.quiver(X, Y, U, -V, color='g')

#  Second subplot 2.b)
ax2 = fig2.add_subplot(1, 2, 2, projection='3d')
ax2.set_title('F(x,y)=zî+xĵ +yk')
# set the function 
F= (X+2*Y);
ax2.quiver(X, Y, F, U, V, W, color='r')

#=====================
#  Third Exercice AA1
#=====================
# Make the grid 
X, Y = np.meshgrid(np.arange(-3, 3, 0.2),
                    np.arange(-3, 3, 0.2))
U = np.ones((30, 30))
V = np.ones((30, 30))
W = np.ones((30, 30))

f = X**2 + X*Y
(fx,fy)=np.gradient(f)
E_norm = np.sqrt(fx**2 + fy**2)

#-----------------------------------------------------------------------------
# Plot the iso-contours and the vector field
#-----------------------------------------------------------------------------
fig3 = plt.figure('Apartado 3')
#  First subplot 2.a)
ax3 = fig3.add_subplot()
ax3.set_aspect('equal')
# Enforce the margins, and enlarge them to give room for the vectors.
ax3.use_sticky_edges = False
ax3.margins(0.07)
levels = np.arange(0., 1., 0.01)
cmap = cm.get_cmap(name='hot', lut=None)
ax3.contour(X, Y, f, levels=15, cmap=cmap, linewidths=[2.0, 1.0, 1.0, 1.0]) 
            #, levels=levels
# Plots vector field
ax3.quiver(X, Y, fx/E_norm, fy/E_norm,
          units='xy', scale=10., zorder=3, color='blue',
          width=0.007, headwidth=3., headlength=4.)

ax3.set_title('Gradient plot')


#=====================
#  Fourth Exercice AA1
#=====================
f = Y**2 - X**2
(fx,fy)=np.gradient(f)
E_norm = np.sqrt(fx**2 + fy**2)
fig4 = plt.figure('Apartado 4')
#  First subplot 2.a)
ax4 = fig4.add_subplot()
ax4.set_aspect('equal')
# Enforce the margins, and enlarge them to give room for the vectors.
ax4.use_sticky_edges = False
ax4.margins(0.07)
levels = np.arange(0., 1., 0.01)
cmap = cm.get_cmap(name='hot', lut=None)
ax4.contour(X, Y, f, levels=20, cmap=cmap, linewidths=[2.0, 1.0, 1.0, 1.0]) 
            #, levels=levels
# Plots vector field
ax4.quiver(X, Y, fx/E_norm, fy/E_norm,
          units='xy', scale=10., zorder=3, color='blue',
          width=0.007, headwidth=3., headlength=4.)
strm = ax4.streamplot(X, Y, fx, fy, color=U, linewidth=1, cmap='autumn', density=0.5)
ax4.set_title('Gradient plot and streamlines')

plt.show()




