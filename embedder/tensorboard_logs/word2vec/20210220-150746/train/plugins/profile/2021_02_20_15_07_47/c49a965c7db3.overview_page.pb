?	?̒ 5B@?̒ 5B@!?̒ 5B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?̒ 5B@{1???@@1??2nj ??AcAaP?Ѥ?I?y?i@*	?Zd7`@2U
Iterator::Model::ParallelMapV2k??"ڦ?!??3A@)k??"ڦ?1??3A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat7???-??!?NT?Xx7@)QMI?????1$? ?A4@:Preprocessing2F
Iterator::Modeli?hs?۰?!̀,<aI@)̚X?+???1z??H?Z0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenates?????!??D|?33@)Z?H?s
??1v?S+)+@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef?O7P?}?!p?IW}@)f?O7P?}?1p?IW}@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?TގpZ??!4??ÞH@)}zlˀ?t?1?gҀ*@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+?j?q?!gu??e?	@)?+?j?q?1gu??e?	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??W??!9?+???5@)G仔?dl?1s?6??_@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?1?muX@Q?ÙG?\@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	{1???@@{1???@@!{1???@@      ??!       "	??2nj ????2nj ??!??2nj ??*      ??!       2	cAaP?Ѥ?cAaP?Ѥ?!cAaP?Ѥ?:	?y?i@?y?i@!?y?i@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?1?muX@y?ÙG?\@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsX?"????!X?"????"=
sequential_110/dense_330/MatMulMatMul?2???!??????0"=
 sequential_110/dense_332/SoftmaxSoftmax????!??U?+???"=
sequential_110/dense_331/MatMulMatMul??zI秔?!?I??(g??0"-
IteratorGetNext/_2_Recv?k?7?ғ?!{???"K
-gradient_tape/sequential_110/dense_331/MatMulMatMulZ9???ё?!??ٍ??0"=
sequential_110/dense_332/MatMulMatMulA޶ ????!??VC???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamgo?K?[??!???
???"K
-gradient_tape/sequential_110/dense_330/MatMulMatMul????i???!Q;Z????0"K
/gradient_tape/sequential_110/dense_331/MatMul_1MatMul?	`?????!?;1Ē??Q      Y@Y??(??(.@a?뺮?:U@q??gX?R@y!??+-???"?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?75.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 