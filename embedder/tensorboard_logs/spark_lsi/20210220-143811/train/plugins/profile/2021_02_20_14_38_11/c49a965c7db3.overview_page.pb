?	wۅ?:?<@wۅ?:?<@!wۅ?:?<@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-wۅ?:?<@?_ ?	:@1S?1?#???A??|	??I????????*	??K7?\@2F
Iterator::ModelW횐???!h????L@)4-?2??1?V?U?=@:Preprocessing2U
Iterator::Model::ParallelMapV2/M??.??!?=k??O:@)/M??.??1?=k??O:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ajK???!t?JgZ3@)Z???֑?1?3??-/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate=?Е??!?T?:?v1@)f??ᔹ??1??>??l&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??-?|?!??_@)??-?|?1??_@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipa???)??!?>^?E@)"????v?1)?Xq?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?q75p?!O??bB@)?q75p?1O??bB@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?T4??Ζ?!49???3@)??+H3f?1%??]Z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???5?bX@Q~,?IY?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?_ ?	:@?_ ?	:@!?_ ?	:@      ??!       "	S?1?#???S?1?#???!S?1?#???*      ??!       2	??|	????|	??!??|	??:	????????????????!????????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???5?bX@y~,?IY?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?S4???!?S4???":
sequential_5/dense_17/SoftmaxSoftmax?"?y????!O?UC????":
sequential_5/dense_15/MatMulMatMul??sΜǖ?!@K$?w???0"H
*gradient_tape/sequential_5/dense_15/MatMulMatMul ???YȐ?!?޻????0"H
,gradient_tape/sequential_5/dense_16/MatMul_1MatMul?A?å???!?f4????"H
,gradient_tape/sequential_5/dense_17/MatMul_1MatMul ?!T8??!??;?o??":
sequential_5/dense_16/MatMulMatMul ?!T8??!L?n?b??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam0??t??!P
???&??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam}А?p͇?!Ԑ?i???":
sequential_5/dense_17/MatMulMatMul???4????!?ꀃ????0Q      Y@Y??(??(.@a?뺮?:U@q?,??S@y??v?1??"?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?78.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 