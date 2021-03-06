?	E???V?A@E???V?A@!E???V?A@	?qe?ر@?qe?ر@!?qe?ر@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6E???V?A@p#e???@@1???D??Aq?Ws?`??IW>??????Yd[?????*T㥛??W@)      =2U
Iterator::Model::ParallelMapV20e?????!V???np?@)0e?????1V???np?@:Preprocessing2F
Iterator::ModelZ?xZ~???!??:???K@)????{*??1?8???7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat)[$?F??!l????3@)???.5B??1M su0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate6>???4??!P??k?0@)[?[!?Ƃ?1H?rL#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice"ĕ?wF{?!2?e?@)"ĕ?wF{?12?e?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipX??V?ĥ?!s?{`F@)??n?;2v?1P~x?_?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?K?b?k?!???x?@)?K?b?k?1???x?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapY?? ޒ?!?L??ld3@)??fHe?1{????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?qe?ر@I??#??X@Q[nI?Y???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	p#e???@@p#e???@@!p#e???@@      ??!       "	???D?????D??!???D??*      ??!       2	q?Ws?`??q?Ws?`??!q?Ws?`??:	W>??????W>??????!W>??????B      ??!       J	d[?????d[?????!d[?????R      ??!       Z	d[?????d[?????!d[?????b      ??!       JGPUY?qe?ر@b q??#??X@y[nI?Y????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits@/?zgY??!@/?zgY??"=
sequential_243/dense_729/MatMulMatMulf?E?????!ML??????0"=
 sequential_243/dense_731/SoftmaxSoftmaxnc?롞?!?}?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamK? ͘?!?K??5??"K
-gradient_tape/sequential_243/dense_729/MatMulMatMul?(7YWڕ?!V??????0"K
/gradient_tape/sequential_243/dense_731/MatMul_1MatMuli;?X????!eg?????"K
/gradient_tape/sequential_243/dense_730/MatMul_1MatMul???3:???!՝?G?+??"=
sequential_243/dense_730/MatMulMatMul??9Xҁ??! :&mt??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamj(?2?9??!??Q?????"K
-gradient_tape/sequential_243/dense_730/MatMulMatMul?N?sW??!3}6?$???0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??3I7?8@y????????"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?24.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 