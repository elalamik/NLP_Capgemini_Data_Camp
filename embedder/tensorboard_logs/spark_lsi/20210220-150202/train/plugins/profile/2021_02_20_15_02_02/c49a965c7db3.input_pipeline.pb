	?wE???>@?wE???>@!?wE???>@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?wE???>@???k??<@1؛??	??A??I???Ip?71$g??*	R????R@2U
Iterator::Model::ParallelMapV2,=)???!?R_?l!A@),=)???1?R_?l!A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE?D??2??!?~W?7@)f???8???1??? 4@:Preprocessing2F
Iterator::ModelGXT??$??!?[??m I@)?@׾?^??1?#TE?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3?z????!???p?0@)????z?1?xb$"!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?J[\?3y?!Y???	? @)?J[\?3y?1Y???	? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipq ?????!i?Ks??H@)????Wr?1]#??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??|??g?!?ˑE??@)??|??g?1?ˑE??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?? ?=??!?gI??3@)W??mUb?1?w&@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI	?&??X@Q?}Zv8Z??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???k??<@???k??<@!???k??<@      ??!       "	؛??	??؛??	??!؛??	??*      ??!       2	??I?????I???!??I???:	p?71$g??p?71$g??!p?71$g??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q	?&??X@y?}Zv8Z??