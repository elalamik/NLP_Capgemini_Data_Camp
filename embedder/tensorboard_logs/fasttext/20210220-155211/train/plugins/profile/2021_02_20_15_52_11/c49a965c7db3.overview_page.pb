?	?2??C@?2??C@!?2??C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?2??C@Tn????A@1o????'??A?gB?Ē??II???M@*	?p=
?+[@2U
Iterator::Model::ParallelMapV232?]?)??!?O???Q@@)32?]?)??1?O???Q@@:Preprocessing2F
Iterator::Model???5??! ?? M@) ?yrM???1Ϙ)М9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat
p??!???2@)?X??;??17?????.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?&?????!ܦh?L@)?&?????1ܦh?L@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??s]???!D?i??-@)?|	^??1??j^?i@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?Zd;??!??3:??D@)XWj1xx?13c????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorN?=??jn?!v?]?T@)N?=??jn?1v?]?T@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???HLP??!	O???Z1@)????y7f?1=oc?W?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??/?}?X@Q??t?`??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Tn????A@Tn????A@!Tn????A@      ??!       "	o????'??o????'??!o????'??*      ??!       2	?gB?Ē???gB?Ē??!?gB?Ē??:	I???M@I???M@!I???M@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??/?}?X@y??t?`???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits+?
?t)??!+?
?t)??"=
sequential_252/dense_756/MatMulMatMul~
{V??!{^n?5???0"=
sequential_252/dense_757/MatMulMatMul+??J???!?|?S???0"=
 sequential_252/dense_758/SoftmaxSoftmaxN|N?????!jL?u??"=
sequential_252/dense_758/MatMulMatMul??w(?Ӑ?! Fp~???0"K
-gradient_tape/sequential_252/dense_757/MatMulMatMul:?ҳ?Ȑ?!G???????0"K
-gradient_tape/sequential_252/dense_756/MatMulMatMul?G|??(??!b-f?????0"K
/gradient_tape/sequential_252/dense_758/MatMul_1MatMul}?'???!J??????"K
/gradient_tape/sequential_252/dense_757/MatMul_1MatMul ^b7o??!K?V>???"K
-gradient_tape/sequential_252/dense_758/MatMulMatMulH?_?a^??!???b1???0Q      Y@Y??(??(.@a?뺮?:U@q????G?S@y?f???'??"?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 