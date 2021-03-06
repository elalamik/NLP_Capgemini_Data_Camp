?	l?˸D@l?˸D@!l?˸D@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-l?˸D@?e???B@1?)?dq???Au?Hg`???I?9?S?i@*	??????U@2U
Iterator::Model::ParallelMapV2?Za?^C??!??lB@)?Za?^C??1??lB@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?,	PS˖?!?_i*?X9@)??J\Ǹ??1H?I?4@:Preprocessing2F
Iterator::Model??Ϝ?)??!q?c??I@)?Q??Z???1t???^?.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>Z?1?	z?!??????@)>Z?1?	z?1??????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?+?`pͥ?!???;>H@)??[v?x?13?@??=@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?e?I)???!??1}?x)@)?p?a??s?1_?n;?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorv???/Jp?!E5? @)v???/Jp?1E5? @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapԁ??V_??!?R ?T0@)Pqx??i?1	????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIU?2?,?X@Q?*[?Ҵ??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?e???B@?e???B@!?e???B@      ??!       "	?)?dq????)?dq???!?)?dq???*      ??!       2	u?Hg`???u?Hg`???!u?Hg`???:	?9?S?i@?9?S?i@!?9?S?i@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qU?2?,?X@y?*[?Ҵ???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsienD???!ienD???"<
sequential_69/dense_207/MatMulMatMulڷ??_P??!dg PR??0"-
IteratorGetNext/_2_Recv?ͥ$???!???Iu??"<
sequential_69/dense_209/SoftmaxSoftmaxZ?? ?&??!Bn?":??"<
sequential_69/dense_208/MatMulMatMul???????!???[???0"J
,gradient_tape/sequential_69/dense_207/MatMulMatMul???????!??'P0??0"J
.gradient_tape/sequential_69/dense_208/MatMul_1MatMul?!??D	??!Ԁt?@??"J
.gradient_tape/sequential_69/dense_209/MatMul_1MatMul??>i????!???O??"<
sequential_69/dense_209/MatMulMatMul;7???!es?? [??0"J
,gradient_tape/sequential_69/dense_208/MatMulMatMul???ʬ??!?~?G?e??0Q      Y@Y??(??(.@a?뺮?:U@q?&U?S@y??/?o??"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?78.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 