?	S{m?8B@S{m?8B@!S{m?8B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-S{m?8B@ǹM?W?@@1?'?bdI??A?9??ȥ?I??o??z??*	???S?X@2F
Iterator::Modelt?%z???!?A?k?O@)x?캷"??1??K?s?@@:Preprocessing2U
Iterator::Model::ParallelMapV2??qќ?!}Ķ?d`<@)??qќ?1}Ķ?d`<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatw???s???!~?H?t0@)????c??1h?M{O?*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateH?V
???!U?(X&,@)f?O7P?}?1Q?vS	k@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice*6?u?!{?!X??\C?@)*6?u?!{?1X??\C?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???;??!??X?Y?B@):y?	?5r?1Br?{?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor????N$h?!P?=??@)????N$h?1P?=??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap>	l??3??!q??.;?0@)?????g?1/"?@=@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI1w??oX@Q?1?N@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	ǹM?W?@@ǹM?W?@@!ǹM?W?@@      ??!       "	?'?bdI???'?bdI??!?'?bdI??*      ??!       2	?9??ȥ??9??ȥ?!?9??ȥ?:	??o??z????o??z??!??o??z??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q1w??oX@y?1?N@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??`???!??`???"<
sequential_94/dense_282/MatMulMatMul????4:??!׃?????0"-
IteratorGetNext/_2_Recv&Q)?D5??! ??̐(??"<
sequential_94/dense_284/SoftmaxSoftmax?Ǒ????!??t???"J
,gradient_tape/sequential_94/dense_282/MatMulMatMul????7ȕ?!*Ԓ{???0"<
sequential_94/dense_283/MatMulMatMulUjA????!榀mG??0"J
.gradient_tape/sequential_94/dense_283/MatMul_1MatMulBZ19i???!?????"J
,gradient_tape/sequential_94/dense_283/MatMulMatMul|E???!k??A6??0"J
.gradient_tape/sequential_94/dense_284/MatMul_1MatMulDZ????!?xd+??"<
sequential_94/dense_284/MatMulMatMul?B?@???!?i}??0Q      Y@Y??(??(.@a?뺮?:U@qH?A~`1R@y???{5l??"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?72.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 