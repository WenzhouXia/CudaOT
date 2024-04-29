#include<SparseSinkhorn/image_ot_solver.h>
#include<string>
#include<Tools.h>
#include<iostream>
#include <ctime>
#include <fstream>  // Include for file operations
#include <sstream>
#include <iomanip>
// this function tests the full data set of the DOTbechmark
// the file path of the data should be adjusted before running the program
// this file is the first example I created to test the performance of the
// OT between two images, it shows a good performance compared with the LP
// with regard to the meomory usage and solving time.
// the next importange job I should do is to realize the OT between two color images!



// int main2(int argc, char **argv){


//     //if (argc <= 1)
//      //   return -1;
//     //int image_size = atoi(argv[1]);
//     int image_size = 64;
//     std::string filex,filey;
//     std::vector<double> result;
 

//     clock_t begin = clock();
//     int cnt = 0;
//     for (int i = 1;i <= 5; i=i+1){
//         for (int j = 1; j <= 165; j = j + 11){
             
//         cnt++;
 
//         filex = "../data/Yaledat/Yale"+ std::to_string(i)+".dat";
//         filey = "../data/Yaledat/Yale"+ std::to_string(j)+".dat";
//         std::vector<double> muXdat=readFile<double>(filex.c_str());
//         std::vector<double> muYdat=readFile<double>(filey.c_str());
//         double res  = image_ot_solver(image_size,muXdat,muYdat);
//         result.push_back(res);
//         //printf("%.4f\n", res);
//         }
//     }
//     clock_t end = clock();
//     double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
//     std::cout << "\n" << elapsed_secs/(double)cnt << "s" << std::endl;
    
    
//     for (int i = 0;i < 5 ;++i){
//     for (int j = 0;j < 15;++j)
//       std::cout << result[i*15+j] << " " ;
//     std::cout << " " << std::endl;}
//     return 0;

// }

int main(int argc, char **argv){


    // if (argc <= 1)
    //     return -1;
    // int image_size = atoi(argv[1]);
    // int dev = atoi(argv[2]);
    // printf("dev: %d\n", dev);
    // printf("image size: %d\n", image_size);
    // std::string filex, filey;
    if (argc <= 7) {
        std::cerr << "Usage: " << argv[0] << " <image_size> <dev> <data_type> <index_i> <index_j> <maxError> <truncation_thresh" << std::endl;
        return -1;
    }
    

    int image_size = atoi(argv[1]);
    int dev = atoi(argv[2]);
    std::string data_type = argv[3]; // 新增参数：数据类型
    int index_i = atoi(argv[4]); // 新增参数：图片编号i
    int index_j = atoi(argv[5]); // 新增参数：图片编号j
    double maxError = atof(argv[6]); // 新增参数：最大误差
    double truncation_thresh = atof(argv[7]); // 新增参数：截断阈值

    std::cout << "Device: " << dev << std::endl;
    std::cout << "Image size: " << image_size << std::endl;
    std::cout << "Data type: " << data_type << std::endl; // 显示新参数
    std::cout << "Indices: " << index_i << ", " << index_j << std::endl; // 显示新参数
    std::cout << "Max error: " << maxError << std::endl; // 显示新参数
    std::cout << "Truncation threshold: " << truncation_thresh << std::endl; // 显示新参数
    std::string filex, filey;

    clock_t begin = clock();

    filex = "../data/ot_benchmark/" + data_type + "/data" +
                    std::to_string(image_size) + "_100" + std::to_string(index_i) + ".dat";
    filey = "../data/ot_benchmark/" + data_type + "/data" +
                    std::to_string(image_size) + "_100" + std::to_string(index_j) + ".dat";

    
    printf("filex: %s\n", filex.c_str());
    printf("filey: %s\n", filey.c_str());
    std::vector<double> muXdat=readFile<double>(filex.c_str());
    std::vector<double> muYdat=readFile<double>(filey.c_str());

    double scale = 1.0 / (1.0 + 1e-10 * image_size * image_size);
    if (data_type == "MicroscopyImages" || data_type == "Shapes"){
        for (size_t i = 0; i < muXdat.size(); ++i) {
            muXdat[i] += 1e-10;
            muXdat[i] *= scale;
        }
        for (size_t i = 0; i < muYdat.size(); ++i) {
            muYdat[i] += 1e-10;
            muYdat[i] *= scale;
        }

        
    }
    double res  = image_ot_solver(image_size,muXdat,muYdat, dev, maxError, truncation_thresh);
    printf("%.4f\n", res);
    printf("dataType: %s\n", data_type.c_str());

    clock_t end = clock();
    double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    std::cout << "\n" << elapsed_secs << "s" << std::endl;
    
    std::ostringstream filename;
    filename << std::scientific << std::setprecision(0);
    filename << "sinkhorn_" << image_size << "_" << dev << "_" << data_type << "_" << index_i << "_" << index_j << "_" << maxError << "_" << truncation_thresh << ".txt";

    // 打开一个文件输出流
    std::ofstream out_file(filename.str());

    // 检查文件是否成功打开
    if (out_file.is_open()) {
        // 将数据写入文件
        out_file << "Result: " << res << std::endl;
        out_file << "Time: " << elapsed_secs << std::endl;
        // 关闭文件
        out_file.close();
        printf("写入完成！文件名: %s\n", filename.str().c_str());
    } else {
        std::cerr << "Unable to open file: " << filename.str() << std::endl;
    }


    return 0;

}





