	?~1[?B@?~1[?B@!?~1[?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?~1[?B@?j?	?}A@1?
??X??A??c!:??I?G??V??*	&??C?T@2U
Iterator::Model::ParallelMapV2 A?c?]??!?v??%6@@) A?c?]??1?v??%6@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??f????!
??K:@)^???H??16?{CШ5@:Preprocessing2F
Iterator::Model??x@٤?!*??q?H@)?ui???1??????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?;???!ȓ?`?m/@)?ص?ݒ|?1A,?<? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicetys?V{x?!??b@)tys?V{x?1??b@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=$}Z??!?>,??LI@)?Ϲ???t?1Ռ0???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?1>?^?m?!Ma??@)?1>?^?m?1Ma??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapF^????!nd???^2@)t&m??a?1P?,??>@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?_???X@Q?h??_??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?j?	?}A@?j?	?}A@!?j?	?}A@      ??!       "	?
??X???
??X??!?
??X??*      ??!       2	??c!:????c!:??!??c!:??:	?G??V???G??V??!?G??V??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?_???X@y?h??_??