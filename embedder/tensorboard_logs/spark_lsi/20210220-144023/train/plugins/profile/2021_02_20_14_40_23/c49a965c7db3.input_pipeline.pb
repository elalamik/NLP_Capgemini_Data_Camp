	??-?#9@??-?#9@!??-?#9@	???p???????p????!???p????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??-?#9@%??C7@1x??qo??A???h??Id???^???Yi???>ȶ?*	K7?A`?X@2U
Iterator::Model::ParallelMapV2?߅??ʛ?!?
???;@)?߅??ʛ?1?
???;@:Preprocessing2F
Iterator::Model?E???Ԩ?!?hS?*?H@)???9"ߕ?1oƐq?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!N&?J?l4@)+1?JZ??1<??|01@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?<??@f??!??r6?-7@)>	l??3??16??zP
1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>?4a??x?!??1?B?@)>?4a??x?1??1?B?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?,????!|???fI@)9^??I?t?1?侩g@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?_?5?!j?!??9-??	@)?_?5?!j?1??9-??	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY32?]???!
??N?F9@)_????`?1??F?? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???p????I??.?^X@Q ??)W@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	%??C7@%??C7@!%??C7@      ??!       "	x??qo??x??qo??!x??qo??*      ??!       2	???h?????h??!???h??:	d???^???d???^???!d???^???B      ??!       J	i???>ȶ?i???>ȶ?!i???>ȶ?R      ??!       Z	i???>ȶ?i???>ȶ?!i???>ȶ?b      ??!       JGPUY???p????b q??.?^X@y ??)W@