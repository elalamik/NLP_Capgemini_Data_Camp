?	C?y?7<@C?y?7<@!C?y?7<@	???S\?????S\??!???S\??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6C?y?7<@D?X?o?9@1?z??a??AVG?tF??IqW?"???YH?9????*	?Zd;?Y@2U
Iterator::Model::ParallelMapV2?_??ME??!??"?f?8@)?_??ME??1??"?f?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatD????o??!??|.?9@)?`?.?e??1?vS>p65@:Preprocessing2F
Iterator::ModelH¾?D???!(?ìEF@)%?S;Ô?1dqQ???3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>ʈ@???!?#????3@)ޓ??Zӌ?1R?e?L+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipv?և?F??!??E<S?K@)?*l? {?1?%n"4?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?#K?x?!????@)?#K?x?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor6??
(t?!?;???@)6??
(t?1?;???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?b('?U??!נp?*7@)????Дm?1???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???S\??I?]???cX@Q?+*??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	D?X?o?9@D?X?o?9@!D?X?o?9@      ??!       "	?z??a???z??a??!?z??a??*      ??!       2	VG?tF??VG?tF??!VG?tF??:	qW?"???qW?"???!qW?"???B      ??!       J	H?9????H?9????!H?9????R      ??!       Z	H?9????H?9????!H?9????b      ??!       JGPUY???S\??b q?]???cX@y?+*???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???????!???????"=
sequential_219/dense_657/MatMulMatMul;k?q??!??g,???0"=
 sequential_219/dense_659/SoftmaxSoftmax?DC???!6??????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?Iˡ??!? K?n???"K
-gradient_tape/sequential_219/dense_657/MatMulMatMul^?k?!)???}???0"K
/gradient_tape/sequential_219/dense_659/MatMul_1MatMul`?R?!??!O? ?o.??"K
/gradient_tape/sequential_219/dense_658/MatMul_1MatMulZ{?Ҽ??!?j?<z??"=
sequential_219/dense_658/MatMulMatMul???%????!???b????0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?????7??!1?_~q???"=
sequential_219/dense_659/MatMulMatMul?+???b??!??Gx????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q^??&?mI@yD?Ke??"?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?50.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 