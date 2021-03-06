#ifndef SELF_ORGANIZING_MAP_H
#define SELF_ORGANIZING_MAP_H

#include "edge_detection_config.h"
#include "neuron.h"
#include <similarity_measure.h>
#include <multi_img.h>
#include <vector>

class SOM {

public:
	typedef std::vector<Neuron> Row;
	typedef std::vector<Row> Field;

	SOM(const vole::EdgeDetectionConfig &conf, int dimension);
	SOM(const vole::EdgeDetectionConfig &conf, const multi_img &data);

	virtual ~SOM();

	/**
	* Returns a pointer to the neuron at the given grid position
	*
	* @param	x x-coordinate
	* @param	y y-coordinate
	* @return	Pointer to neuron
	*/
	inline Neuron* getNeuron(int x, int y)
	{ return &neurons[y][x]; }

	//! export as multi_img
	multi_img export_2d();

	//! Returns the width of the SOM grid
	inline int getWidth() const
	{ return width; }

	//! Returns the height of the SOM grid
	inline int getHeight() const
	{ return height; }

	//! Returns dimensionality of the SOM ( equal to neuron dimensionality)
	inline unsigned int getDimension() const
	{ return dim; }

	/**
	* Finds the neuron in the SOM grid which has the closest distance
	* to the given input vector and returns its position in the grid.
	*
	* @param	input Neuron to which closest neuron in SOM will be determined
	* @return	Position of the neuron in x,y coordinates
	*/
	virtual cv::Point identifyWinnerNeuron(const multi_img::Pixel &input) const;
	virtual std::vector<std::pair<double, cv::Point> >
	closestN(const multi_img::Pixel &inputVec, unsigned int N) const;

	virtual void updateNeighborhood(const cv::Point &pos,
	                                const multi_img::Pixel &input,
	                                double radius, double learnRate);

	virtual double getDistance(const cv::Point2d &p1, const cv::Point2d &p2) const;
	virtual double getDistance3(const cv::Point3d &p1, const cv::Point3d &p2) const;

	bool ishack3d() const { return config.hack3d; }

protected:
	virtual void updateSingle3(const cv::Point3i &pos, const multi_img::Pixel &input, double weight);
	virtual void updateNeighborhood3(const cv::Point &pos,
	                                 const multi_img::Pixel &input,
	                                 double radius, double learnRate);

	int dim;		///< Dimension of each neuron / the SOM
	int width;		///< Width of SOM grid
	int height;		///< Height of SOM grid

	Field neurons;	///< Neurons in the SOM grid

	const vole::EdgeDetectionConfig &config;

public:
	vole::SimilarityMeasure<multi_img::Value> *distfun;
};


#endif // SELF_ORGANIZING_MAP_H
