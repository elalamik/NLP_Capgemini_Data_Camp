	]1#?=?;@]1#?=?;@!]1#?=?;@	{r2U???{r2U???!{r2U???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6]1#?=?;@????9@1?an?r??A!?X4????I?0?*???Y}<?ݭ,??*	{?G?j[@2F
Iterator::Model`w???s??!?d?K@)???c??1?\5>A?;@:Preprocessing2U
Iterator::Model::ParallelMapV2?\?	???!?l??PH:@)?\?	???1?l??PH:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatKY?8?ŝ?!.=????:@)????b??1??t??5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???V?z?!G??6?@)???V?z?1G??6?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??vhX???!=???ף'@)?? Z+z?13A?yM@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????岩?!X???6?F@)?VBwI?u?1??"PA>@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorϠ???u?!M??P/@)Ϡ???u?1M??P/@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?蜟?8??!??-??,@)Q?[??g?1R?G?M @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9{r2U???I_?'~w]X@Qۅ??%{ @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????9@????9@!????9@      ??!       "	?an?r???an?r??!?an?r??*      ??!       2	!?X4????!?X4????!!?X4????:	?0?*????0?*???!?0?*???B      ??!       J	}<?ݭ,??}<?ݭ,??!}<?ݭ,??R      ??!       Z	}<?ݭ,??}<?ݭ,??!}<?ݭ,??b      ??!       JGPUY{r2U???b q_?'~w]X@yۅ??%{ @