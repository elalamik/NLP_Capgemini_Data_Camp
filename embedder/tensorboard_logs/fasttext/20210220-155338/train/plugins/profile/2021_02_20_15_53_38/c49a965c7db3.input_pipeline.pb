	x'??B@x'??B@!x'??B@	???ݑi?????ݑi??!???ݑi??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6x'??B@S>U?o?@1O?\e??A;?zj???I??Z?ַ@YV+~????*	?l???yW@2U
Iterator::Model::ParallelMapV2h͏?????!F]ǽiv@@)h͏?????1F]ǽiv@@:Preprocessing2F
Iterator::Model?Z{??B??!??5#?YL@)l?f?ܖ?1???ʮ?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?L??~ޔ?!?)?I&?5@)]1#?=??1???6??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??B?ʠz?!??x,h?@)??B?ʠz?1??x,h?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?? ??!??6?/$+@)?>?6?y?1??????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?;? Ѥ?!\G??>?E@)?l???u?1/?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorڨN?n?!FMc?H?@)ڨN?n?1FMc?H?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapS"???!?????/@)?,D??a?1C?rEv@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 83.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?13.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???ݑi??I1??T_X@QH??v??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	S>U?o?@S>U?o?@!S>U?o?@      ??!       "	O?\e??O?\e??!O?\e??*      ??!       2	;?zj???;?zj???!;?zj???:	??Z?ַ@??Z?ַ@!??Z?ַ@B      ??!       J	V+~????V+~????!V+~????R      ??!       Z	V+~????V+~????!V+~????b      ??!       JGPUY???ݑi??b q1??T_X@yH??v??