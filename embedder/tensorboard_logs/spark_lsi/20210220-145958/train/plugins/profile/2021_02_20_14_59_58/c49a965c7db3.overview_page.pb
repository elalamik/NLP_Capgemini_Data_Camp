?	}???D@}???D@!}???D@	NS?-???NS?-???!NS?-???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6}???D@???Ա?C@1L??$w???A???+?z??I??Dׅ_??Yi??>?Q??*	?S㥛lX@2U
Iterator::Model::ParallelMapV2?~4?27??!??,Q?3?@)?~4?27??1??,Q?3?@:Preprocessing2F
Iterator::ModelQO?????!?B-'?L@) 
fL???1T?X	q?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?V|C᳕?!?	???5@)???i????1????1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef`X?|{?!????z@)f`X?|{?1????z@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??;F??!???IC*@)???0y?15ڕ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?Z??	??!????E@)Քd??r?1??p??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor#?ng_yp?!5??w@)#?ng_yp?15??w@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?r.?Ue??!:???a/@)9+?&?|d?111??z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9NS?-???IU???CnX@Q%.v???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???Ա?C@???Ա?C@!???Ա?C@      ??!       "	L??$w???L??$w???!L??$w???*      ??!       2	???+?z?????+?z??!???+?z??:	??Dׅ_????Dׅ_??!??Dׅ_??B      ??!       J	i??>?Q??i??>?Q??!i??>?Q??R      ??!       Z	i??>?Q??i??>?Q??!i??>?Q??b      ??!       JGPUYNS?-???b qU???CnX@y%.v????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits[?7????![?7????"<
sequential_84/dense_252/MatMulMatMulr???0)??!)1?3????0"<
sequential_84/dense_254/SoftmaxSoftmax???????!h?g?????"<
sequential_84/dense_253/MatMulMatMul????<??!ǹ?
_??0"J
,gradient_tape/sequential_84/dense_253/MatMulMatMul	???%??!H?£??0"<
sequential_84/dense_254/MatMulMatMul???4NE??! ??5f??0"J
.gradient_tape/sequential_84/dense_254/MatMul_1MatMul?F?Ր?!)u?^?s??"J
,gradient_tape/sequential_84/dense_252/MatMulMatMulb[ˡ??!U??`??0"J
.gradient_tape/sequential_84/dense_253/MatMul_1MatMul_͜????!o?i>?H??"J
,gradient_tape/sequential_84/dense_254/MatMulMatMul??t????!????))??0Q      Y@Y??(??(.@a?뺮?:U@q,"??^OP@y???????"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 