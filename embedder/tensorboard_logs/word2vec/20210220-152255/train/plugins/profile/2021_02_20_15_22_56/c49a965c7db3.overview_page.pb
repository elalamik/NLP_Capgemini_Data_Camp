?	??n????@??n????@!??n????@	呵?:5 @呵?:5 @!呵?:5 @"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??n????@??V??=@1???A?p??A??5?ڋ??IzQ?_8??Y?h8en??*	?A`??Nb@2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapAH0?[??!???fs?D@)u???1)e?$??>@:Preprocessing2F
Iterator::Model?3ڪ$???!*9?7"E@)?'????1????}5@:Preprocessing2U
Iterator::Model::ParallelMapV25bf??(??!?`c??4@)5bf??(??1?`c??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatp?>;ຒ?!?????(@)l#??fF??1ii^a?$@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatewj.7???!hu?RM?&@)??A_z???1?
???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?K6l?{?!?:??v@)?K6l?{?1?:??v@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?ڥ????!?????L@)C?l??t?1yw!+?l@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?E|'f?h?!NB???~ @)?E|'f?h?1NB???~ @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9呵?:5 @I??ܺO	X@Q?%d/?A??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??V??=@??V??=@!??V??=@      ??!       "	???A?p?????A?p??!???A?p??*      ??!       2	??5?ڋ????5?ڋ??!??5?ڋ??:	zQ?_8??zQ?_8??!zQ?_8??B      ??!       J	?h8en???h8en??!?h8en??R      ??!       Z	?h8en???h8en??!?h8en??b      ??!       JGPUY呵?:5 @b q??ܺO	X@y?%d/?A???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?<??????!?<??????"-
IteratorGetNext/_1_Send޳aW?{??!?Ti??z??"=
sequential_163/dense_489/MatMulMatMul??{?v???!??؈[???0"=
 sequential_163/dense_491/SoftmaxSoftmax?m?Z?F??!?F??Ć??"K
-gradient_tape/sequential_163/dense_489/MatMulMatMul???&I??!???pU[??0"=
sequential_163/dense_490/MatMulMatMul?ܞ?/q??!?rjh??0"K
-gradient_tape/sequential_163/dense_490/MatMulMatMul?:?$?8??!n6bL????0"K
/gradient_tape/sequential_163/dense_490/MatMul_1MatMul???)+v??![??Z???"K
/gradient_tape/sequential_163/dense_491/MatMul_1MatMul???J??!?^o?R??"=
sequential_163/dense_491/MatMulMatMuln??	֕?!<0X?c???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qjg%{d?5@y?A?ZnG??"?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?21.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 