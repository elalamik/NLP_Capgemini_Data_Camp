	 ?={.{9@ ?={.{9@! ?={.{9@	1?n ?e@1?n ?e@!1?n ?e@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6 ?={.{9@8????7@1?! _???A'?UH?I??I?v?>X??Y,?????*	?&1?T\@2U
Iterator::Model::ParallelMapV2P÷?n???!?i???7@)P÷?n???1?i???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??	K<???!????8@)S%??RΗ?1m)?ʃ4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???ګ??!???J;@)????<,??1?F??Ib1@:Preprocessing2F
Iterator::Model?Z??	??!?l?? B@)??i?????1?@??Դ(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?_"?:???!?UT?#@)?_"?:???1?UT?#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip^H??0~??!?_?~c?O@)zpw?n???1#}?&??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap׿?3g}??!??????@)?@fg?;u?1*??RL@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????Gs?!˝o?L?@)????Gs?1˝o?L?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no92?n ?e@ILl?Ӓ?W@QI#j?g@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	8????7@8????7@!8????7@      ??!       "	?! _????! _???!?! _???*      ??!       2	'?UH?I??'?UH?I??!'?UH?I??:	?v?>X???v?>X??!?v?>X??B      ??!       J	,?????,?????!,?????R      ??!       Z	,?????,?????!,?????b      ??!       JGPUY2?n ?e@b qLl?Ӓ?W@yI#j?g@