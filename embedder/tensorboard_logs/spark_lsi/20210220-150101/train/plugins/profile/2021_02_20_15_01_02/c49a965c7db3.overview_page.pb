?	$}ZEbC@$}ZEbC@!$}ZEbC@	>??v???>??v???!>??v???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6$}ZEbC@2"QhYo?@1??????A?\5????I??A??@Y?gs???*	????SX@2U
Iterator::Model::ParallelMapV2?PۆQ??!P?%N`@@)?PۆQ??1P?%N`@@:Preprocessing2F
Iterator::Model??? ???!?7?JF?K@)??K??$??1֌W?97@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?*?)???!?Ϊs??4@)??*????1 ?6??0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?%????!iA?c? @)?%????1iA?c? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ݑ?????!?Q?Z?0@)??ң?~?1%Ħ?h?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip*V?????!q???F@)*T7?s?1???z?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor0???DKn?!?[???f@)0???DKn?1?[???f@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapd?6??:??!???A2K2@)??m3?a?1(I?7G?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 81.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?16.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9>??v???Im쩿?mX@QE?cr???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	2"QhYo?@2"QhYo?@!2"QhYo?@      ??!       "	????????????!??????*      ??!       2	?\5?????\5????!?\5????:	??A??@??A??@!??A??@B      ??!       J	?gs????gs???!?gs???R      ??!       Z	?gs????gs???!?gs???b      ??!       JGPUY>??v???b qm쩿?mX@yE?cr????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits6????!6????"<
sequential_86/dense_258/MatMulMatMul?M?V??!????s??0"<
sequential_86/dense_260/SoftmaxSoftmax?VgV?/??!??~??Y??"<
sequential_86/dense_259/MatMulMatMul5i?ӕ?!?xq????0"-
IteratorGetNext/_1_Send?ߍf???!?4Æ&s??"J
,gradient_tape/sequential_86/dense_259/MatMulMatMul~?P??!?z??????0"<
sequential_86/dense_260/MatMulMatMul??:?v??!?'??
???0"J
,gradient_tape/sequential_86/dense_258/MatMulMatMul??`?CK??!1????0"J
.gradient_tape/sequential_86/dense_260/MatMul_1MatMulQ?}????!? ?Ƥ???"J
.gradient_tape/sequential_86/dense_259/MatMul_1MatMul?`?R???!?$\_???Q      Y@Y??(??(.@a?뺮?:U@q]=?w{P@y??ͯ???"?
both?Your program is POTENTIALLY input-bound because 81.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?16.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 