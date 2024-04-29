#ifndef IMAGE_SOLVER_H
#define IMAGE_SOLVER_H
#include<vector>

double image_ot_solver(int image_size,
                     std::vector<double> &muXdat,
                     std::vector<double> &muYdat, int dev, double maxError_input, double truncation_threshold);
#endif // IMAGE_SOLVER_H
