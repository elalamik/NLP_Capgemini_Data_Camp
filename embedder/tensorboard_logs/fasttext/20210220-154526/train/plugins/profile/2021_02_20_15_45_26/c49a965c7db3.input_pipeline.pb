	??p?y;@??p?y;@!??p?y;@	L~V????L~V????!L~V????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??p?y;@1	??8@1??4c?t??A?~߿yq??I?k_@/??Y?
??X??*	t?V?e@2U
Iterator::Model::ParallelMapV2P?s???!??^	?N4@)P?s???1??^	?N4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?#+?ƨ?!|x???;@)??N?j??1eDr2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateٕ??zO??! h٢??7@)v?~k'??1"s_*c-@:Preprocessing2F
Iterator::ModelV-???!?͜??@@)?z6?>??1?뵃W*@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorO=?බ??!??X???"@)O=?බ??1??X???"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice=Y??w??!???沀"@)=Y??w??1???沀"@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?~?~?d??!?.r??@@)1ҋ??*??1'뵂?*"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipO?}????!%?1?~?P@)L???????1:?]@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9M~V????I'Y!|f;X@Qr;?K?? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	1	??8@1	??8@!1	??8@      ??!       "	??4c?t????4c?t??!??4c?t??*      ??!       2	?~߿yq???~߿yq??!?~߿yq??:	?k_@/???k_@/??!?k_@/??B      ??!       J	?
??X???
??X??!?
??X??R      ??!       Z	?
??X???
??X??!?
??X??b      ??!       JGPUYM~V????b q'Y!|f;X@yr;?K?? @