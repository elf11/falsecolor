#ifndef DISTANCE_H
#define DISTANCE_H

#include "distance_config.h"
#include <command.h>


class Distance : public vole::Command {

	public:
		Distance();
		Distance(const vole::DistanceConfig &config);
		int execute();
		
		void printShortHelp() const;
		void printHelp() const;

	private:
		vole::DistanceConfig config;
		double interpolate(double val, double y0, double x0, double y1, double x1);
		double base(double val);
		cv::Mat3d jet(cv::Mat1d input);
		cv::Vec3d bgr(double gray);
};

#endif
