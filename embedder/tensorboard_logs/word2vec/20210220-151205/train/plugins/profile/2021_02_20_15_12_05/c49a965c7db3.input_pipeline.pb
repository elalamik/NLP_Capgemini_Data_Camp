	#??@@#??@@!#??@@	?U??????U?????!?U?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6#??@@?%9`Wk=@1? ?K(??A?*??٧?I?×?"???Yvi????*	sh??|GY@2U
Iterator::Model::ParallelMapV2]????ۡ?!e?D$R?A@)]????ۡ?1e?D$R?A@:Preprocessing2F
Iterator::Model??W;?s??!?cBzK@);?I/??1b	~}?u4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat.?5#?ܕ?!E>\q?5@)<i??
???1??? 1@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???DR??!?????F@)????/?~?1?8; ??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?U??6o??!?<??v+@)!Y?n}?1I?L*l@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???ip{?!<c
??@)???ip{?1<c
??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorȗP??q?!0re??p@)ȗP??q?10re??p@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapC?8
??!Y????t0@)-??;??f?1?Ǻ??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?U?????I?E?GCX@QP	?#x?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?%9`Wk=@?%9`Wk=@!?%9`Wk=@      ??!       "	? ?K(??? ?K(??!? ?K(??*      ??!       2	?*??٧??*??٧?!?*??٧?:	?×?"????×?"???!?×?"???B      ??!       J	vi????vi????!vi????R      ??!       Z	vi????vi????!vi????b      ??!       JGPUY?U?????b q?E?GCX@yP	?#x?@