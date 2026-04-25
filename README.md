# Quantum-Harmonic-oscillator-
Solving the Quantum harmonic oscillator problem using the Finite Difference Method.

Verification that the eigenvalues follow the pattern E_n=(n+1/2)ℏω
<img width="200" height="190" alt="image" src="https://github.com/user-attachments/assets/947bec88-bb73-47de-9c7a-2e6b979de474" />




Potential Plot:
<img width="1075" height="623" alt="image" src="https://github.com/user-attachments/assets/164402a6-2907-4c65-a683-e8231a3dad8f" />


 
Comaprison plots of wavefunction:
<img width="1121" height="615" alt="image" src="https://github.com/user-attachments/assets/1715abe6-0e5e-45ac-9be3-68b200dde766" />

 

Probability density plots:
<img width="1121" height="687" alt="image" src="https://github.com/user-attachments/assets/32a89850-2c84-40be-9c0a-46b6726fffbe" />

 

30th wavefunction plot:
<img width="1141" height="681" alt="image" src="https://github.com/user-attachments/assets/49efaf24-a2d8-4ee2-b16f-e095301dfeab" />

 Expectation values and uncertainity product:
  <img width="1141" height="300" alt="image" src="https://github.com/user-attachments/assets/ad0c7e26-b6db-4791-95b5-9459feb71270" />
<img width="550" height="180" alt="image" src="https://github.com/user-attachments/assets/eb379433-4088-4243-a6d9-83918a8fcd0b" />








Sensitivity to Choice of Parameters:

Error in energy eigen values w.r.t. grid parameters-
	
  rmin= -5x10-14 m   and rmax= 5x10-14m
<img width="450" height="150" alt="image" src="https://github.com/user-attachments/assets/9c0448bd-5e81-42f3-bd50-c472a2ee8811" />
  








rmin= -2x10-14 m   and rmax= 2x10-14m
<img width="450" height="170" alt="image" src="https://github.com/user-attachments/assets/40edddde-5e80-4c67-b60c-e8b7d177a499" />







rmin= -1.3x10-14 m   and rmax= 1.3x10-14m
<img width="450" height="170" alt="image" src="https://github.com/user-attachments/assets/b3ec26fe-79f8-4077-bcdf-4ba93c3c0466" />










Conclusion: The error decreases when the computational grid is chosen to include the classical turning points, as in this case where the grid was set near the classical turning point for the fourth bound state (1.03 × 10^-14).





Accuracy of Uncertainity product:

rmin= -5x10-14 m   and rmax= 5x10-14m <img width="200" height="150" alt="image" src="https://github.com/user-attachments/assets/3686b321-fd5c-4297-9487-5e8ff46ff412" />







rmin= -2x10-14 m   and rmax= 2x10-14<img width="200" height="150" alt="image" src="https://github.com/user-attachments/assets/ee0e19bb-2b4f-4241-b2b3-f71968cb053c" />










rmin= -1.3x10-14 m   and rmax= 1.3x10-14m<img width="200" height="150" alt="image" src="https://github.com/user-attachments/assets/ab4fb398-593d-409f-86c1-e1cbbaa4a22e" />









Conclusion: The uncertainty principle expresses a fundamental lower bound on the product of uncertainties in position and momentum for any quantum state: ΔxΔp≥ℏ/2. If your sampling grid is too coarse, or the range is too short, the calculated values of Δx and Δp can be underestimated, seemingly violating the uncertainty principle.

