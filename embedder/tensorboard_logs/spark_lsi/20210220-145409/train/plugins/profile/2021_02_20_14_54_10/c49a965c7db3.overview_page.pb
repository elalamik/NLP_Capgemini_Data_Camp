?	3?`??%A@3?`??%A@!3?`??%A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-3?`??%A@?w?W}?@1?????2??A?%W??M??I? d˲??*	???MbxW@2U
Iterator::Model::ParallelMapV2??	Q??!F@?!??@)??	Q??1F@?!??@:Preprocessing2F
Iterator::Model??:M??!'??eYpM@)Q?n?H??1]%J?W;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatφ?3????!??8?1@)RE?*k??1???7n?,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?a??A??!K??'?c-@)?qS??|?1f;:?^@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Q??Z?{?!2'!???@)?Q??Z?{?12'!???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip,??f*ģ?!?HM???D@)E???V	v?1i%1?1?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???mj?!????$@)???mj?1????$@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap8j??{??!?^.??1@)?2?gg?1?0???X@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI>?)R8gX@Q>?κ?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?w?W}?@?w?W}?@!?w?W}?@      ??!       "	?????2???????2??!?????2??*      ??!       2	?%W??M???%W??M??!?%W??M??:	? d˲??? d˲??!? d˲??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q>?)R8gX@y>?κ?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitscr?g~???!cr?g~???"-
IteratorGetNext/_2_RecvMI?<Q[??!?D?R??"<
sequential_71/dense_213/MatMulMatMul??Q??ɠ?!??_??5??0"J
,gradient_tape/sequential_71/dense_213/MatMulMatMulx?<??^??!?\Ǚ???0"<
sequential_71/dense_215/SoftmaxSoftmax?K6??t??!G?H??"<
sequential_71/dense_214/MatMulMatMulZSe
B???!>h??r??0"J
,gradient_tape/sequential_71/dense_214/MatMulMatMulK??=x???!?Y ~??0"J
.gradient_tape/sequential_71/dense_215/MatMul_1MatMul???????!M8??"<
sequential_71/dense_215/MatMulMatMulJ붽????!???m#{??0"J
.gradient_tape/sequential_71/dense_214/MatMul_1MatMulc?3/????!?so?o??Q      Y@Y??(??(.@a?뺮?:U@qi??;R@y????????"?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 