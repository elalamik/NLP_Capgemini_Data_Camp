?	?4?HA@?4?HA@!?4?HA@	??#?#????#?#??!??#?#??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?4?HA@??]P??@1??QF\ ??AY??+????I?^
????Y/\sG???*	Zd;?'^@2U
Iterator::Model::ParallelMapV2-?}ͩ?!zRn?}?D@)-?}ͩ?1zRn?}?D@:Preprocessing2F
Iterator::Model,cC7???!?s??Q@)+????:??1?Y???G:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?V??y??!??P)?-@)??RB????1?????(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice8K?rJ?!????T@)8K?rJ?1????T@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???ދ/??!?!/3%@)???Ju?1K?l@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????U???!?2?}??@)${??!Ut?1&???v@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor]?@?"i?!{,?Y@)]?@?"i?1{,?Y@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapz?):?ˏ?!k?~?ɽ)@)?O?mpf?1[?u?j*@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??#?#??If??k?LX@Q?p???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??]P??@??]P??@!??]P??@      ??!       "	??QF\ ????QF\ ??!??QF\ ??*      ??!       2	Y??+????Y??+????!Y??+????:	?^
?????^
????!?^
????B      ??!       J	/\sG???/\sG???!/\sG???R      ??!       Z	/\sG???/\sG???!/\sG???b      ??!       JGPUY??#?#??b qf??k?LX@y?p???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits9\??f??!9\??f??"-
IteratorGetNext/_1_Send[???sJ??!???y??"=
sequential_239/dense_717/MatMulMatMul?̞1??!?? ?????0"K
-gradient_tape/sequential_239/dense_717/MatMulMatMul:]ߐ?=??!>?i?-??0"=
 sequential_239/dense_719/SoftmaxSoftmax???)??! w?????"=
sequential_239/dense_718/MatMulMatMulV?`9??!?P?b??0"=
sequential_239/dense_719/MatMulMatMul?c?'???!???%??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?̞1??!?QU?4(??"M
3sequential_239/batch_normalization_119/moments/meanMean?iԻ?`??!??3?:#??"K
-gradient_tape/sequential_239/dense_718/MatMulMatMul?[?%??!?|?c??0Q      Y@Y??(??(.@a?뺮?:U@q$E???7@y??1?Z???"?
both?Your program is POTENTIALLY input-bound because 92.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?23.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 