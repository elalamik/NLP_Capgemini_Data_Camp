	??C?EA@??C?EA@!??C?EA@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??C?EA@rjg???>@1??aۢ??AzR&5???I狽_T@*		ףp=?Z@2U
Iterator::Model::ParallelMapV2??O??!?(ϒ2?@)??O??1?(ϒ2?@:Preprocessing2F
Iterator::Model&?v??-??!&??!?J@)?@?شR??1g?Q??K6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??$???!?y???7@)%?S;Ô?1}̓A3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??9???!xck??&,@)>$|?o?~?1??Rz?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???)?~?!O?J?@)???)?~?1O?J?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipS?K?^??!?}?9?@G@){/?h?w?1eJp???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??A?fu?!?-?3?@)??A?fu?1?-?3?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??rf???!(????+1@)??eOk?1_??D?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??e}?|X@Q??GS0b @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	rjg???>@rjg???>@!rjg???>@      ??!       "	??aۢ????aۢ??!??aۢ??*      ??!       2	zR&5???zR&5???!zR&5???:	狽_T@狽_T@!狽_T@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??e}?|X@y??GS0b @