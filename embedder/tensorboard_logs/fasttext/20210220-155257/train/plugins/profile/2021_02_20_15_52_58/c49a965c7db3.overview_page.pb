?	2 {???B@2 {???B@!2 {???B@	2%j?+^??2%j?+^??!2%j?+^??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails62 {???B@??n??A@1?????A??X?v??IePmp":??Ykb??????*	z?G??Z@2U
Iterator::Model::ParallelMapV2?p?;??!???l??@@)?p?;??1???l??@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???/??!A?48@)46<?R??1??? |4@:Preprocessing2F
Iterator::ModelOt]?????!z?6???J@)O??Z}??1?](qP?3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice ֪]??!?x?L? @) ֪]??1?x?L? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateh??'?H??!r+1???-@)?IbI??|?1??p???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?c??삩?!?3?ZiG@)?V횐v?1?????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???VC?n?!?Jw-W@)???VC?n?1?Jw-W@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?-v??2??!ƌ??1@)?Д?~Pg?1n??K?d@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no93%j?+^??Ij???{\X@Q({??? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??n??A@??n??A@!??n??A@      ??!       "	??????????!?????*      ??!       2	??X?v????X?v??!??X?v??:	ePmp":??ePmp":??!ePmp":??B      ??!       J	kb??????kb??????!kb??????R      ??!       Z	kb??????kb??????!kb??????b      ??!       JGPUY3%j?+^??b qj???{\X@y({??? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??6g"t??!??6g"t??"=
sequential_255/dense_765/MatMulMatMul_?F-???!"???????0"-
IteratorGetNext/_1_Send`$E?ז?!&-Х???"=
 sequential_255/dense_767/SoftmaxSoftmax@???L??!n?Cn>??"=
sequential_255/dense_766/MatMulMatMulHM@??A??!???x'??0"K
-gradient_tape/sequential_255/dense_766/MatMulMatMulD?????!M?4????0"=
sequential_255/dense_767/MatMulMatMul)??????!ݕ?=????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???Ut??!?͎?????"K
-gradient_tape/sequential_255/dense_765/MatMulMatMul? 5????!??3???0"K
/gradient_tape/sequential_255/dense_767/MatMul_1MatMul??g?	??!??H}????Q      Y@Y??(??(.@a?뺮?:U@q?%?@?Q@y?L??fE??"?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?68.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 