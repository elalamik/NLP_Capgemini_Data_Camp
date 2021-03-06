?	???z?:A@???z?:A@!???z?:A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???z?:A@+~???>@1??yrM??A????U-??I?iӌ@*	 ?rh??]@2F
Iterator::Model???Xm???!8???JJ@)?L????1J ??#<@:Preprocessing2U
Iterator::Model::ParallelMapV2Ψ?*?؝?!(?K?8@)Ψ?*?؝?1(?K?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat'"????!?_?2?0@)a7l[?ِ?1??HX??+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?X32?]??!?N???0@)Y???"??1d`??@&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapĵ??^(??!ȆU?B?:@))%?????1g???#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef/?N{?!?????p@)f/?N{?1?????p@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?S??٬?!?)?a?G@)[?:???r?1[??Rt
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor2??%??n?!0&ݩ?	@)2??%??n?10&ݩ?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?=DYgX@QDxw?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	+~???>@+~???>@!+~???>@      ??!       "	??yrM????yrM??!??yrM??*      ??!       2	????U-??????U-??!????U-??:	?iӌ@?iӌ@!?iӌ@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?=DYgX@yDxw?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?K|?????!?K|?????"<
sequential_46/dense_138/MatMulMatMul]@`h???!c??P???0"-
IteratorGetNext/_2_Recv??.???!??.?????"J
,gradient_tape/sequential_46/dense_138/MatMulMatMul_/?k? ??!?
?????0"<
sequential_46/dense_139/MatMulMatMul???>Pi??!??t3??0"<
sequential_46/dense_140/SoftmaxSoftmax?]???!?? ?????"J
,gradient_tape/sequential_46/dense_139/MatMulMatMulq0?dr$??!??i?????0"J
.gradient_tape/sequential_46/dense_139/MatMul_1MatMul?t?gS???!?V?d????"<
sequential_46/dense_140/MatMulMatMul???&????!n&??????0"K
1sequential_46/batch_normalization_22/moments/meanMean??&???!D^T	???Q      Y@Y??(??(.@a?뺮?:U@qY?R<?L@y&?Q?p??"?
both?Your program is POTENTIALLY input-bound because 89.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?8.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 