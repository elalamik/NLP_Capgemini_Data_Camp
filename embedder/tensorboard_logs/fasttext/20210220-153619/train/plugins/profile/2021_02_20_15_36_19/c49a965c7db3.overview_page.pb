?	*???OC7@*???OC7@!*???OC7@	>???????>???????!>???????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6*???OC7@?A&9o5@1*?""??A?]?o%??IwI?Q???Y??x?=??*	ʡE??g@2U
Iterator::Model::ParallelMapV2^?????!ֺ6ϣ?C@)^?????1ֺ6ϣ?C@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??^~?ɬ?!U??-?v>@){K9_콨?19?d?.:@:Preprocessing2F
Iterator::Model???a????!?k]y?-J@)J)???Ƙ?1?Ú?8*@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatr??>s֗?!ɮ??9)@)g?v???1œ???-%@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?|?|?.??!q??|D @)?|?|?.??1q??|D @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??Ma????!????X?G@)??t ??u?1?~//??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorY?+???n?!l(ʰ1 @)Y?+???n?1l(ʰ1 @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapXU/??d??!?0?'@@)~?
Ĳi?1?N2??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9>???????I]S8??VX@Q?`<??i@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?A&9o5@?A&9o5@!?A&9o5@      ??!       "	*?""??*?""??!*?""??*      ??!       2	?]?o%???]?o%??!?]?o%??:	wI?Q???wI?Q???!wI?Q???B      ??!       J	??x?=????x?=??!??x?=??R      ??!       Z	??x?=????x?=??!??x?=??b      ??!       JGPUY>???????b q]S8??VX@y?`<??i@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?#?<]??!?#?<]??"=
sequential_201/dense_603/MatMulMatMul??P=Yޤ?!????iJ??0"=
 sequential_201/dense_605/SoftmaxSoftmaxƹd?מ?!\????7??"=
sequential_201/dense_604/MatMulMatMulX؀<?o??!? v????0"K
-gradient_tape/sequential_201/dense_603/MatMulMatMul??? ?o??!?~?޵??0"=
sequential_201/dense_605/MatMulMatMul??0k????!I?5~?1??0"K
-gradient_tape/sequential_201/dense_604/MatMulMatMulՙ?J???!?(?-ҩ??0"K
/gradient_tape/sequential_201/dense_605/MatMul_1MatMul-??tu??!l[j})??"K
/gradient_tape/sequential_201/dense_604/MatMul_1MatMul?";??p??!?n;8X??"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam?Ы>???!+&????Q      Y@Y[ZZZZZ6@ajiiiiiS@q??t"wJ@ym~{?????"?
both?Your program is POTENTIALLY input-bound because 92.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?52.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 