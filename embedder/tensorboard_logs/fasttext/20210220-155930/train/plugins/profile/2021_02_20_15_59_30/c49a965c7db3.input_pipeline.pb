	?wJ'A@?wJ'A@!?wJ'A@	>?m???>?m???!>?m???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?wJ'A@?h?hs??@1'?
b???A?΅?^Ԧ?Iڮ????Y2?????*effffNZ@)      =2U
Iterator::Model::ParallelMapV2E????ؠ?!??~?eE?@)E????ؠ?1??~?eE?@:Preprocessing2F
Iterator::Model
?8?? ??!?M???K@)???
DO??1l>??j8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat)??5??!??x6@)????&M??1???7??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate){K9_???!1z^?+@)s?c????1x??MD@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice? 3??O|?!?U?nF@)? 3??O|?1?U?nF@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??8?~ߧ?!?!6?'F@)JΉ=??u?1#|?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(?x?ߢs?!???[K9@)(?x?ߢs?1???[K9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapL??1%??!?zK?0@)?-X?xi?1Hs\?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9>?m???Id???/?X@QBey?;??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?h?hs??@?h?hs??@!?h?hs??@      ??!       "	'?
b???'?
b???!'?
b???*      ??!       2	?΅?^Ԧ??΅?^Ԧ?!?΅?^Ԧ?:	ڮ????ڮ????!ڮ????B      ??!       J	2?????2?????!2?????R      ??!       Z	2?????2?????!2?????b      ??!       JGPUY>?m???b qd???/?X@yBey?;??