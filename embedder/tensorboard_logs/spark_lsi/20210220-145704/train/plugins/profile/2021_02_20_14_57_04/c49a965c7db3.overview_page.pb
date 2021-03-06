?	?
?7?B@?
?7?B@!?
?7?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?
?7?B@2 {??cA@1?CmF???A?GnM?-??I???m?3??*	~?5^??S@2U
Iterator::Model::ParallelMapV2??^zo??!v?'?ּA@)??^zo??1v?'?ּA@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatG?j?????!6lF??8@)????fd??1vJ??Ps4@:Preprocessing2F
Iterator::Model?A???!h??U?I@)2V??W??1?C??U/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicek-?B;?y?!A4???  @)k-?B;?y?1A4???  @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?x@ٔ??!?zj??mH@)B\9{g?u?1??C?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?{G?	1??!/?????,@)???׺t?1ہ?8??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoro,(?4j?! Ko??X@)o,(?4j?1 Ko??X@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?p]1#??!????@?1@)??@??c?1c???{?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIx,%?w?X@Q????b??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	2 {??cA@2 {??cA@!2 {??cA@      ??!       "	?CmF????CmF???!?CmF???*      ??!       2	?GnM?-???GnM?-??!?GnM?-??:	???m?3?????m?3??!???m?3??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qx,%?w?X@y????b???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsA?G@???!A?G@???"<
sequential_77/dense_231/MatMulMatMul??g???!?w?T????0"<
sequential_77/dense_233/SoftmaxSoftmax??w?=??!9ͣS5??"J
.gradient_tape/sequential_77/dense_232/MatMul_1MatMulH??ܹ??!"?>?L??"J
,gradient_tape/sequential_77/dense_231/MatMulMatMulO?c??l??!]??YC??0"J
.gradient_tape/sequential_77/dense_233/MatMul_1MatMulk??HR??!-l?5???"<
sequential_77/dense_232/MatMulMatMulA??}??!?t??. ??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamK?
?!???!?̟?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamH?D=??!:ţ????"J
,gradient_tape/sequential_77/dense_233/MatMulMatMulwBg?????!N??@?T??0Q      Y@Y??(??(.@a?뺮?:U@q  ??=SU@y??hQ?n??"?
both?Your program is POTENTIALLY input-bound because 92.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?85.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 