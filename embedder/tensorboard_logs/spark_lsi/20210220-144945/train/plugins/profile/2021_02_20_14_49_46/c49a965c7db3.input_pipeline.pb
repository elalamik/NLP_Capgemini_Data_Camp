	P8??Lz=@P8??Lz=@!P8??Lz=@	FDD????FDD????!FDD????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6P8??Lz=@B!??:@1?Q*?	???A??%??:??I6Vb?????Y??K???*	+??W@2U
Iterator::Model::ParallelMapV2?/?1"Q??!p!? )?@@)?/?1"Q??1p!? )?@@:Preprocessing2F
Iterator::ModelF????x??!??f?-J@)???eO??1L?;˘?2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????u6??!B??z0?4@)??ǘ????1buP?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????!Tr???/0@)???Xm??1F?V??p @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?-y<-??!?
e?
?G@)???͎T?1'?h?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceI/j?? ?!Ǿ(% ?@)I/j?? ?1Ǿ(% ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor_`V(??l?!;T??@)_`V(??l?1;T??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapF$a?N??!????2@)???h?xd?1Um?Z
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9FDD????I???	FX@Q?c'W?H@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B!??:@B!??:@!B!??:@      ??!       "	?Q*?	????Q*?	???!?Q*?	???*      ??!       2	??%??:????%??:??!??%??:??:	6Vb?????6Vb?????!6Vb?????B      ??!       J	??K?????K???!??K???R      ??!       Z	??K?????K???!??K???b      ??!       JGPUYFDD????b q???	FX@y?c'W?H@