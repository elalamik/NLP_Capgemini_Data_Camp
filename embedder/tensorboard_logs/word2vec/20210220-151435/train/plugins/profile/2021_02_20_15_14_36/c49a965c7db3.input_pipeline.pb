	??u?\>@??u?\>@!??u?\>@	oE?R;P??oE?R;P??!oE?R;P??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??u?\>@???u?9@1?I?_???A??????I6[y??@Y?m??ʆ??*	̡E???[@2F
Iterator::Model?`?>??!!Ȱ?t?P@)}?:???1??mG??C@:Preprocessing2U
Iterator::Model::ParallelMapV2????)??!?x?O?\;@)????)??1?x?O?\;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?߾?3??!??/@)b?'֩???1?6|j?K*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateY??+????!u?s?4?%@)Н`?unz?1??^5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?vhX??v?!?u?"?@)?vhX??v?1?u?"?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?9?S?ɢ?!?o?@@)uʣaQq?1??
U?i@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??W9?i?!?Ek?.?@)??W9?i?1?Ek?.?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?A]?P??!u
 Pk*@)????=f?1???W@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 82.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?14.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9nE?R;P??I|??:qX@Q??D?9???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???u?9@???u?9@!???u?9@      ??!       "	?I?_????I?_???!?I?_???*      ??!       2	????????????!??????:	6[y??@6[y??@!6[y??@B      ??!       J	?m??ʆ???m??ʆ??!?m??ʆ??R      ??!       Z	?m??ʆ???m??ʆ??!?m??ʆ??b      ??!       JGPUYnE?R;P??b q|??:qX@y??D?9???