	,???)?=@,???)?=@!,???)?=@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-,???)?=@????;@1?-v??2??Ax????գ?I?S??Y??*	:??v??S@2U
Iterator::Model::ParallelMapV2?z?????!?r8??=@)?z?????1?r8??=@:Preprocessing2F
Iterator::Model%W@????!??Tq?FL@)ĕ?wF[??1v-7?q?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?SW>????!%?E)15@)???B:??1an?
??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?1???Aw?!?>?3?@)?1???Aw?1?>?3?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3???Uֆ?!???%K?,@)?-@?jv?1r??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip,????`??!GZ??W?E@)?? v?p?1F?#?Y?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>+N?f?!~?? c@)>+N?f?1~?? c@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ډ??H??!????1@)??????a?1??G	p;@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???D??X@Q??߮???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????;@????;@!????;@      ??!       "	?-v??2???-v??2??!?-v??2??*      ??!       2	x????գ?x????գ?!x????գ?:	?S??Y???S??Y??!?S??Y??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???D??X@y??߮???