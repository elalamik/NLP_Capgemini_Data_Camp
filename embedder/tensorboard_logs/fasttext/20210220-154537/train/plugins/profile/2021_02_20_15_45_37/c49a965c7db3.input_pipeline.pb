	?Bus??@@?Bus??@@!?Bus??@@	?j2$???j2$??!?j2$??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?Bus??@@I???|?>@1?????A??Y,??I?5?;N???Y'?ei????*	u?V?Z@2U
Iterator::Model::ParallelMapV2@?@?w???!Ug?~X@@)@?@?w???1Ug?~X@@:Preprocessing2F
Iterator::Model?????I??!?޻???K@)???????12??z6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????j??!???<6@)H?I?OǓ?1s?E@?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?rk?m???!ַ???)@)?y??Q}?1??L??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{?\?&?{?!?׼?%G@){?\?&?{?1?׼?%G@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip4??<???!c!DjF@)??u??y?1?>U???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?(#. ?r?!.V ?=?@)?(#. ?r?1.V ?=?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???eO??!'0%?"?0@)YO???*p?1ۡ?y?r@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?j2$??IfemM?@X@Q???:????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	I???|?>@I???|?>@!I???|?>@      ??!       "	??????????!?????*      ??!       2	??Y,????Y,??!??Y,??:	?5?;N????5?;N???!?5?;N???B      ??!       J	'?ei????'?ei????!'?ei????R      ??!       Z	'?ei????'?ei????!'?ei????b      ??!       JGPUY?j2$??b qfemM?@X@y???:????