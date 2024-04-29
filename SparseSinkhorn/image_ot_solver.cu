#include"image_ot_solver.h"
#include"Common/handler_cuda_error.h"
#include<cuda_runtime_api.h>
#include <stdio.h>
#include<cublas_v2.h>
#include<Common.h>
#include"family.h"
#include <iostream>
#include<SparseSinkhorn/solver.cu>
#include"layer_manage.h"
#include"memory_manage.h"
#include"data_struct.h"
#include"kernel_manage.h"
#include"eps_handler.h"


double image_ot_solver(int image_size,
                     std::vector<double> &muXdat,
                     std::vector<double> &muYdat, int dev, double maxError_input, double truncation_threshold){

    double res = 0.0;
    switch (image_size) {
    case 32:
        res = cuda_image_ot_solver<32>(muXdat,muYdat, dev, maxError_input, truncation_threshold);
        break;
    case 64:
        res = cuda_image_ot_solver<64>(muXdat,muYdat, dev, maxError_input, truncation_threshold);
        break;
    case 128:
        res = cuda_image_ot_solver<128>(muXdat,muYdat, dev, maxError_input, truncation_threshold);
        break;
    case 256:
        res = cuda_image_ot_solver<256>(muXdat,muYdat, dev, maxError_input, truncation_threshold);
        break;
    case 512:
        res = cuda_image_ot_solver<512>(muXdat,muYdat, dev, maxError_input, truncation_threshold);
        break;
    default:
        break;
    }
    return res;

}
