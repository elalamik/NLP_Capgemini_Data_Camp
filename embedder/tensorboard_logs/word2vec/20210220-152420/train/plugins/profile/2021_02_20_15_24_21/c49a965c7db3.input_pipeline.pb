	ѯ?? A@ѯ?? A@!ѯ?? A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-ѯ?? A@? Ϡ??@1? ????A?(?7ӥ?IX???T???*	T㥛?t`@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?5?;Nѡ?!v/??o:@)???i2???1?Sݙ+6@:Preprocessing2U
Iterator::Model::ParallelMapV2??3?c???!I???5@)??3?c???1I???5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?o|??%??!m@??Xp9@)R???T??1kp,?1Y3@:Preprocessing2F
Iterator::Model??"???!?sM?D@)d??????1?eL?492@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceR<??k??!
@???\@)R<??k??1
@???\@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip&??)??!?H???M@)?V?I??10?l?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?N?6??v?!?nC??@)?N?6??v?1?nC??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?+-#????!X???/?;@)Q?[??g?1M?ܰ?~@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIy?TB¡X@Q?!?jo???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	? Ϡ??@? Ϡ??@!? Ϡ??@      ??!       "	? ????? ????!? ????*      ??!       2	?(?7ӥ??(?7ӥ?!?(?7ӥ?:	X???T???X???T???!X???T???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qy?TB¡X@y?!?jo???