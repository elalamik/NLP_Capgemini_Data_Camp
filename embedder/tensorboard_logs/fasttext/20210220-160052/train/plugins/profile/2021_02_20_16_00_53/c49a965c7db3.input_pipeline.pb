	?Gߤi?D@?Gߤi?D@!?Gߤi?D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?Gߤi?D@CV?zN*C@1c?0?????A??????I??g#? @*	??/݄T@2U
Iterator::Model::ParallelMapV2'i??֖?!?=?p,;@)'i??֖?1?=?p,;@:Preprocessing2F
Iterator::ModelFИI???!}?gY.;J@)?yȔA??1?e???I9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??~j?t??!o?f?6&7@)Z?rL???1Y??:3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3??xy??!	?v??/@),???cZ{?1'O*?E @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;?*??y?!?-?@gt@);?*??y?1?-?@gt@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipU??E	???!?b????G@)???%ǝr?1<I??s&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorrQ-"??k?!XL????@)rQ-"??k?1XL????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(??ȯ??!HK?j??2@)??x@?d?1?6-h?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI|;???X@Q!qx???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	CV?zN*C@CV?zN*C@!CV?zN*C@      ??!       "	c?0?????c?0?????!c?0?????*      ??!       2	????????????!??????:	??g#? @??g#? @!??g#? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q|;???X@y!qx???