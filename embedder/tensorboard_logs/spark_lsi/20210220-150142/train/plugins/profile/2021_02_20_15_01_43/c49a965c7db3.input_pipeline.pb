	???[?@@???[?@@!???[?@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???[?@@?!7???@1p$?`Sg??AEg?E(???ImXSY???*	???S?k@2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??A?"L??!=2{??P@)????Fu??1%???L@:Preprocessing2U
Iterator::Model::ParallelMapV2??/??!?????+@)??/??1?????+@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat	Q????!COzt??"@)'L?????1A?p~Zf@:Preprocessing2F
Iterator::Model?:u??<??!???N4@)?8?Վ???1A???>@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateO=?ඖ?!XE???#@)?#EdXŋ?1???OE@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5z5@i???!ȃ?_Y?@)5z5@i???1ȃ?_Y?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipɑ??????!@?=C?S@)??{?qy?1<???<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorEׅ?Om?!??????)Eׅ?Om?1??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIJh?Sc?X@Qn?e+???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?!7???@?!7???@!?!7???@      ??!       "	p$?`Sg??p$?`Sg??!p$?`Sg??*      ??!       2	Eg?E(???Eg?E(???!Eg?E(???:	mXSY???mXSY???!mXSY???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qJh?Sc?X@yn?e+???