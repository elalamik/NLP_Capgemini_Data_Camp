?	?p?iB@?p?iB@!?p?iB@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?p?iB@A.q???@@1W^???;??Ab?k_@/??I2?3/???*	@5^?I?R@2U
Iterator::Model::ParallelMapV2nk?K??!^?94?;@)nk?K??1^?94?;@:Preprocessing2F
Iterator::Model?2???!?z?d:?K@)<?.9???1q0??@F;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????Mb??!?'T^?Y5@)?FN????1??&???1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateJΉ=????! ?P?,@)! _B?w?1?/Q??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicet|?8c?s?!IqOψ@)t|?8c?s?1IqOψ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipRal!?A??!?y??|F@)???^?s?1????l@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?5x_?e?!??k	?l@)?5x_?e?1??k	?l@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap{j??U???!J?yr?D1@)?p?a??c?1M
dS??	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIY3?M?X@Q?)???}??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	A.q???@@A.q???@@!A.q???@@      ??!       "	W^???;??W^???;??!W^???;??*      ??!       2	b?k_@/??b?k_@/??!b?k_@/??:	2?3/???2?3/???!2?3/???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qY3?M?X@y?)???}???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits8?E>?l??!8?E>?l??"=
sequential_266/dense_798/MatMulMatMul?=,??!S\H?ǆ??0"=
 sequential_266/dense_800/SoftmaxSoftmax 8?E??!Wc??k???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??xޔ??!ekֹ??"K
/gradient_tape/sequential_266/dense_800/MatMul_1MatMulۄ????!jsTi???"K
-gradient_tape/sequential_266/dense_798/MatMulMatMul?T?????!fЅs???0"K
/gradient_tape/sequential_266/dense_799/MatMul_1MatMul?^I?N??!?`f*b8??"=
sequential_266/dense_799/MatMulMatMul?P俉??!???(????0"b
?sequential_266/dropout_266/dropout/random_uniform/RandomUniformRandomUniform?O?~??!?v?=????"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?@?3n??!?zroˏ??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?9?q?iS@y?Q	????"?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?77.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 