	?e??@:@?e??@:@!?e??@:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?e??@:@?w??U8@1?? ??A]??ky???I ?={n??*	?????[Y@2U
Iterator::Model::ParallelMapV2?9?ؗl??!?~?];@)?9?ؗl??1?~?];@:Preprocessing2F
Iterator::Model?yUg???!?K????G@)?$$?6???1??Z64@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?\S ????!?$??.?7@)D?R?Z??1Y?A???0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatcAaP?є?!?mi?'4@)r?@H0??1?J%t6?0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicel???f}?!?	?[N@)l???f}?1?	?[N@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipD????9??!p?A-6J@)????v?1L?t?-@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??A?m?!.!J??@)??A?m?1.!J??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!?Լ???:@)~?
Ĳi?14????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?ȥ5?~X@Q??FKY( @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?w??U8@?w??U8@!?w??U8@      ??!       "	?? ???? ??!?? ??*      ??!       2	]??ky???]??ky???!]??ky???:	 ?={n?? ?={n??! ?={n??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?ȥ5?~X@y??FKY( @