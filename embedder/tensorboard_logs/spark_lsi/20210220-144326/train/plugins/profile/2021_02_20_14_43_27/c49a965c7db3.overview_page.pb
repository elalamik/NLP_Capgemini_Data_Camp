?	k`???>@k`???>@!k`???>@	?U¿???U¿??!?U¿??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6k`???>@=?Е?;@1??
?.??A?y????I???v?S??YVҊo(|??*	?G?z.Z@2F
Iterator::ModelM?^?iN??!B???CL@)?X?ן?1MrM?=@:Preprocessing2U
Iterator::Model::ParallelMapV2?w???Ĝ?!9?Y?$?:@)?w???Ĝ?19?Y?$?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeato?ꐛ???!`?-?}V5@)	m9?⪒?1{???h1@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip~?.rO??!?w??E@)???Q?~?1Lw?ץ@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateS=??M??!?-Y???(@)??ǵ?b|?1yxxxxx@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?jIG9x?!s?9???@)?jIG9x?1s?9???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??????p?!'7???o@)??????p?1'7???o@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapߤiP4??!+?????-@)?1???Ag?1???15?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?U¿??I?^%?FX@Q??????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	=?Е?;@=?Е?;@!=?Е?;@      ??!       "	??
?.????
?.??!??
?.??*      ??!       2	?y?????y????!?y????:	???v?S?????v?S??!???v?S??B      ??!       J	VҊo(|??VҊo(|??!VҊo(|??R      ??!       Z	VҊo(|??VҊo(|??!VҊo(|??b      ??!       JGPUY?U¿??b q?^%?FX@y??????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?	?.1>??!?	?.1>??";
sequential_30/dense_90/MatMulMatMul~tԧ???!?X.)F???0";
sequential_30/dense_92/SoftmaxSoftmax?2?L?B??!??ɲ?V??"I
+gradient_tape/sequential_30/dense_90/MatMulMatMul<?]%???!ּO?E??0"I
-gradient_tape/sequential_30/dense_92/MatMul_1MatMul???kč?!?g	??!??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam{CUݹ???!???gQ???"I
-gradient_tape/sequential_30/dense_91/MatMul_1MatMula?Ogg??!??g?????";
sequential_30/dense_91/MatMulMatMula?Ogg??!?[?(???0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam???#k??!???w???"`
=sequential_30/dropout_30/dropout/random_uniform/RandomUniformRandomUniform>?{؍(??!Z??@?`??Q      Y@Y??(??(.@a?뺮?:U@q2 [??Q@y"{J?N;??"?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?68.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 